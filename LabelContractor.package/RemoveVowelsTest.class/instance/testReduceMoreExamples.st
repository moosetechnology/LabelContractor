tests
testReduceMoreExamples

	self assert: (aContractor reduce: 'SequenceableCollection') equals: 'SqncblCllctn'.
	self assert: (aContractor reduce: 'WideSymbol') equals: 'WdSymbl'.