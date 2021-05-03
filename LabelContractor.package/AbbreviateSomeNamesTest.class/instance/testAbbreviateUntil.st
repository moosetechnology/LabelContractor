creation
testAbbreviateUntil

	   self
		   assert: (aContractor
				    abbreviate: 'DMClassNamesBlueprintTestAbbreviateUntil'
				    until: 3)
		   equals: 'DCNBlueprintTestAbbreviateUntil'