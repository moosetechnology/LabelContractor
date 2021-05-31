tests
testReduceWhenCombiningStrategies

	| reducedString |
	reducedString := contractor
		                 removePrefix: 'something';
		                 removeFrequentLetters;
		                 removeVowels;
		                 reduce: stringExample.

	self assert: reducedString equals: 'VrLng'