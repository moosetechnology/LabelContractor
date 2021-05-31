tests
testReduceWhenCombiningStrategisOtherExamples

	contractor
		ellipsis;
		pickFirstCharacters.
	self assert: (contractor reduce: stringExample) equals: 'some.'