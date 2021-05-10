computing
theIndexesOfTheLetterYAsAVowelFrom: aString

	   "
			returns a list of indexes of the 'y' which are vowels in the string.
			
			theIndexesOfTheLetterYAsAVowelFrom: 'system'
			-> #( 2 ) asOrderedCollection 
			
			theIndexesOfTheLetterYAsAVowelFrom: 'mystery'
			-> #(2 7) asOrderedCollection 
			
			theIndexesOfTheLetterYAsAVowelFrom: 'year' 
			-> OrderedCollection empty      (in this case, 'y' is a consonant and not a vowel )
			
			theIndexesOfTheLetterYAsAVowelFrom: 'beyond'
			-> OrderedCollection empty      (same reason, 'y' is more a consonant and not a vowel )
		"

	   | vowel listOfIndexes |
	   vowel := $y.
	   listOfIndexes := OrderedCollection new.
	   1 to: aString size do: [ :index | "self halt."
		   (aString at: index) asLowercase = vowel ifTrue: [ 
			   index ~= 1 ifTrue: [ 
				   (self noVowelIn: aString)
					   ifTrue: [ listOfIndexes add: index ]
					   ifFalse: [ 
						   index = aString size
							   ifTrue: [ listOfIndexes add: index ]
							   ifFalse: [ 
								   ((self isConsonant: (aString at: index - 1)) and:
									    (self isConsonant: (aString at: index + 1))) ifTrue: [ listOfIndexes add: index ] ] ] ] ] ].
	   ^ listOfIndexes