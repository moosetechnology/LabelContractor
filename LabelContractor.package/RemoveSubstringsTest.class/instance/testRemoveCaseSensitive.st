tests
testRemoveCaseSensitive

	self
		assert: (aContractor beCaseSensitive;  reduce: caseSensitiveExample)
		equals: self expectedReducedLabelCaseSensitive