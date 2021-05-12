tests
testReduceOtherExamples

	| strategy1 strategy2 strategy3 |
	strategy1 := LbCRemovePrefixStrategy new with: 'something'.
	strategy2 := LbCRemoveFrequentLettersStrategy new.
	strategy3 := LbCRemoveVowelsStrategy new.
	contractor
		addStrategy: strategy1;
		addStrategy: strategy2;
		addStrategy: strategy3.

	self assert: (contractor reduce: stringExample) equals: 'VrLng'