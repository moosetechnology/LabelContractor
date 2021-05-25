private
getIndexesOfTheLetterYAsAVowelFrom: aString

	"returns a list of indexes of the 'y' which are vowels in the string.
	 Examples:	
		getIndexesOfTheLetterYAsAVowelFrom: 'mystery' (it returns #(2 7) asOrderedCollection ).
		getIndexesOfTheLetterYAsAVowelFrom: 'year' (it returns OrderedCollection empty (in this case, 'y' is a consonant and not a vowel ))"

	| vowel listOfIndexes |
	vowel := $y.
	listOfIndexes := OrderedCollection new.
	1 to: aString size do: [ :index | 
		((aString at: index) asLowercase = vowel and: index > 1) ifTrue: [ 
			(self noVowelIn: aString)
				ifTrue: [ listOfIndexes add: index ]
				ifFalse: [ self addIndexes: listOfIndexes WhenAStringContainsVowels: aString startingAt: index ] ] ].
	^ listOfIndexes