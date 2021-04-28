tests
testReduceWithoutKeepingPath

	| reducedLabel |
	 
	reducedLabel := aContractor reduce: exampleString.
	self assert: reducedLabel equals: self expectedReducedLabel.

	reducedLabel := aContractor reduce: 'A:user/exam/path/' , exampleString.
	self assert: reducedLabel equals: self expectedReducedLabel