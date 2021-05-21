private-algorithm
removeVowelsOnEachStringFrom: aCollectionOfWords

	" Remove the vowels from each string in the collection. Note that the 1st letter of each string in the collection is kept even if it is a vowel.			
		Example:
			LbCRemoveVowelsStrategy new removeVowelsOnEachStringFrom: ({'Of' . 'Some' . 'In'} asOrderedCollection) .
			returns: {'Of'. Sm'. 'In'} asOrderedCollection 	"

	| collectionOfStringsWithoutVowels stringWithoutVowels |	
	collectionOfStringsWithoutVowels := OrderedCollection new.
	aCollectionOfWords do: [ :each | 
		stringWithoutVowels := self removeVowelsFrom: each.
		collectionOfStringsWithoutVowels add: stringWithoutVowels.
		stringWithoutVowels := String new ].
	^ collectionOfStringsWithoutVowels