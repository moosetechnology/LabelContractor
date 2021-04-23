tests
testReduce

	| reducedLabel |
	
	reducedLabel := labelContractorStrategy reduce: exampleString .
	self assert: reducedLabel equals: self expectedReducedLabel.
	
	reducedLabel := labelContractorStrategy reduce: 'A:user/exam/path/',exampleString .
	self assert: reducedLabel equals: self expectedReducedLabel. 