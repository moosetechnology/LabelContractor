private-algorithm
removeVowelsOnEachStringFrom: aCollectionOfWords

	   " 
			Remove the vowels from each string in the collection. 
			Note that the 1st letter of each string in the collection is kept even if it is a vowel.
			
			Examples:
				self annalyseWords: (#('Of'. 'Some'. 'In') asOrderedCollection ).
				-> #('Of'. Sm'. 'In') asOrderedCollection 
			
				self annalyseWords: (#('Some'. 'Other') asOrderedCollection ).
				-> #('Sm'. 'Othr') asOrderedCollection 
		 "

	   | collectionOfStringsWithoutVowels stringWithoutVowels |
	   collectionOfStringsWithoutVowels := OrderedCollection new.
	   aCollectionOfWords do: [ :each | 
			stringWithoutVowels := self removeVowelsFrom: each .
		  collectionOfStringsWithoutVowels add: stringWithoutVowels.
		  stringWithoutVowels := String new ]. 
	   ^ collectionOfStringsWithoutVowels