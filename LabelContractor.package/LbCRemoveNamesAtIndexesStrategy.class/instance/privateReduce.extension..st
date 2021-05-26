reduce-label
privateReduce: aString extension: anotherString
	
	| tokenizedString |
	tokenizedString := tokenizer tokenize: aString.
	indexes do: [ :each | tokenizedString := tokenizedString copyWithoutIndex: each  ]  .
	^ '' join: tokenizedString   