tests
testReduceWhenCombiningUsingPriorities

	| reducedString |
	reducedString := contractor
		                 removeFrequentLetters;
		                 removeVowels;
		                 removePrefix: 'Hashed';
		                 usingPriorities; 
		                 reduce: 'HashedCollection'.

	self assert: reducedString equals: 'Cllcn'