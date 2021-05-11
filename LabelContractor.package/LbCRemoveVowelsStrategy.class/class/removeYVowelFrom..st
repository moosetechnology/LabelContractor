computing
removeYVowelFrom: aString
		
		"
			remove all the letter 'y' which represent a vowel from a string
			
			Examples: 
				LbCRemoveVowelsStrategy removeYVowelFrom: 'mystery'
				-> 'mster'
			
				LbCRemoveVowelsStrategy removeYVowelFrom: 'yellow'
				-> 'yellow'      (because the y is a consonant more than a vowel)
		"
		
	   | indexesOfYVowel string |
		 self halt.
	   string := aString.
	   indexesOfYVowel := self theIndexesOfTheLetterYAsAVowelFrom: string.
	   ^ indexesOfYVowel isEmpty
		     ifTrue: [ aString ]
		     ifFalse: [ 
			     indexesOfYVowel do: [ :index | 
				     string := aString copyReplaceFrom: index to: index with: '' ].
						indexesOfYVowel := self theIndexesOfTheLetterYAsAVowelFrom: string.
			     string ]