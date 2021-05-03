private-algorithm
removeVowelsOnEachStringFrom: aCollectionOfWords

	   " 
			Remove the vowels from each strisg in the collection. 
			If the vowel is the first or the last letter then we keep it.
			Examples:
				self annalyseWords: (#('Of'. 'Some'. 'In') asOrderedCollection ).
				-> #('Sme') asOrderedCollection 
			
				self annalyseWords: (#('Of'. 'Some'. 'Other'. 'In') asOrderedCollection ).
				-> #('Sme'. 'Othr') asOrderedCollection 
		"

	   | filteredCollection newCollection stringWithoutVowels reducedString |
	   stringWithoutVowels := String new.
	   newCollection := OrderedCollection new.
	   filteredCollection := tokenizer filterSmallerTokens: aCollectionOfWords.
	   reducedString := String new.
	   filteredCollection do: [ :each | 
		   each size > 3  " removing the vowels only from the tokens greater than 3 letters"
			   ifTrue: [ 
				   reducedString := self keepFirstAndLastLetter: each.
				   stringWithoutVowels := self removeVowelsFrom: reducedString with: each ]
			   ifFalse: [ stringWithoutVowels := each ].
		   newCollection add: stringWithoutVowels.
		   stringWithoutVowels := String new ].
	   ^ newCollection