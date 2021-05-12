tests
testReduceOtherExamples

	| strategy1 strategy2 strategy3 listOfStrategy |
	
	strategy1 := LbCRemovePrefixStrategy new with: 'something'.
	strategy2 := LbCRemoveFrequentLettersStrategy new.
	strategy3 := LbCRemoveVowelsStrategy new.
	listOfStrategy := { strategy1 . strategy2 . strategy3 }.
	
	contractor strategy: listOfStrategy .
	self assert: (contractor reduce: stringExample) equals: 'VrLng'