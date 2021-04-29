tests
testRemoveCaseUnsensitive

	self
		assert: (aContractor reduce: 'AnExampleofAClAss')
		equals: self expectedReducedLabelCaseUnsensitive