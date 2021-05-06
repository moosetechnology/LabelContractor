tests
testReduceWithKeepingPath

	| reducedString |
	
	reducedString := aContractor
		                keepPath;
		                reduce: exampleString .
	self assert: reducedString equals: self expectedReducedLabel.

	reducedString := aContractor
		                keepPath;
		                reduce: 'A:user/exam/path/', exampleString .
	self assert: reducedString equals: 'A:user/exam/path/', self expectedReducedLabel