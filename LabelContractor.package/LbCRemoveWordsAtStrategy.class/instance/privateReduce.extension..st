reduce-label
privateReduce: aString extension: anExtension

	| tokenizedString wordsToRemove withoutWords filteredIndexes |
	tokenizedString := tokenizer tokenize: aString.
	filteredIndexes := self keepIndexesThatAreInTheBoundOf: tokenizedString size.
	wordsToRemove := filteredIndexes collect: [ :e | tokenizedString at: e ].
	withoutWords := tokenizedString copyWithoutAll: wordsToRemove.
	^ ('' join: withoutWords), anExtension  