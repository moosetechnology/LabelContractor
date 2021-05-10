computing
removeYVowelFrom: aString

	   | indexesOfYVowel string |
	   string := aString.
	   indexesOfYVowel := self theIndexesOfTheLetterYAsAVowelFrom: string.
	   ^ indexesOfYVowel isEmpty
		     ifTrue: [ aString ]
		     ifFalse: [ 
			     indexesOfYVowel do: [ :index | 
				     string := aString copyReplaceFrom: index to: index with: '' ].
						indexesOfYVowel := self theIndexesOfTheLetterYAsAVowelFrom: string.
			     string ]