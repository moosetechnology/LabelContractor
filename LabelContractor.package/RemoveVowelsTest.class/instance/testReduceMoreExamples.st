tests
testReduceMoreExamples

	self assert: (aContractor reduce: 'SequenceableCollection') equals: 'SqncbleCllctn'.
	self assert: (aContractor reduce: 'WideSymbol') equals: 'WdeSymbl'.