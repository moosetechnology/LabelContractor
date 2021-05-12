tests
testReduce

	| strategy1 strategy2 listOfStrategy |
	strategy1 := LbCEllipsisStrategy new.
	strategy2 := LbCPickFirstLettersStrategy new.
	listOfStrategy := { strategy1 . strategy2  }.
	
	contractor strategy: listOfStrategy .
	self assert: (contractor reduce: stringExample) equals: 'some'