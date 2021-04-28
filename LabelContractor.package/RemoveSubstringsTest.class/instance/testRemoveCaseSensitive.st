tests
testRemoveCaseSensitive

	self
		assert: (aContractor reduce: caseSensitiveExample)
		equals: self expectedReducedLabelCaseSensitive