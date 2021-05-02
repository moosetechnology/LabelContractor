private-algorithm
annalyseWords: aCollectionOfWords

	   " 
			Remove the vowels from each strisg in the collection. 
			If the vowel is the first or the last letter then we keep it.
			Examples:
				self annalyseWords: (#('Of'. 'Some'. 'In') asOrderedCollection ).
				-> #('Sme') asOrderedCollection 
			
				self annalyseWords: (#('Of'. 'Some'. 'Other'. 'In') asOrderedCollection ).
				-> #('Sme'. 'Othr') asOrderedCollection 
		"

	   | filteredCollection newCollection stringWithoutVowels |
	   stringWithoutVowels := String new.
	   newCollection := OrderedCollection new.
	   filteredCollection := self filterSmallerWords: aCollectionOfWords.
	   filteredCollection do: [ :each | 
		   (each copyFrom: 2 to: each size - 1) do: [ :character | 
			   character isVowel ifFalse: [ 
				   stringWithoutVowels := stringWithoutVowels , character asString ] ].
		   stringWithoutVowels := (each at: 1) asString, stringWithoutVowels, each last asString.
		   newCollection add: stringWithoutVowels.
		   stringWithoutVowels := String new ].
	   ^ newCollection