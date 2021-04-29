tests
testRemoveCaseSensitive

	self
		assert: (aContractor beCaseSensitive;  reduce: 'anExampleOfAClAss')
		equals: self expectedReducedLabelCaseSensitive