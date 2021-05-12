tests
testReduce

	| stringExample strategy1 strategy2 listOfStrategy |
	stringExample := 'somethingVeryLong'.
	strategy1 := LbCEllipsisStrategy new.
	strategy2 := LbCPickFirstLettersStrategy new.
	listOfStrategy := { strategy1 . strategy2  }.
	
	contractor strategy: listOfStrategy .
	self assert: (contractor reduce: stringExample) equals: 'Some'