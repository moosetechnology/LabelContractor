tests
testRemoveCaseUnsensitive

	self
		assert: (aContractor reduce: caseUnsensitiveExample)
		equals: self expectedReducedLabelCaseUnsensitive