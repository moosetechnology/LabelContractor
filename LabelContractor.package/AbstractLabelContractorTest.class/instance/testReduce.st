tests
testReduce

	| expectedReducedLabelWithPath expectedReducedLabelWithOutPath reducedLabel |
	
	expectedReducedLabelWithPath := self expectedReducedLabelWithPath.
	reducedLabel := labelContractorStrategy reduce: 'AnExampleOfAClass.txt'.
	self assert: reducedLabel equals: expectedReducedLabelWithPath .
	
	expectedReducedLabelWithOutPath := self expectedReducedLabelWithOutPath.
	reducedLabel := labelContractorStrategy reduce: 'A:user/exam/path/AnExampleOfAClass.txt'.
	self assert: reducedLabel equals: expectedReducedLabelWithOutPath  