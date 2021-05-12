tests
testReduce

	| strategy1 strategy2 |
	strategy1 := LbCEllipsisStrategy new.
	strategy2 := LbCPickFirstLettersStrategy new.

	contractor
		addStrategy: strategy1;
		addStrategy: strategy2.
	self assert: (contractor reduce: stringExample) equals: 'some'