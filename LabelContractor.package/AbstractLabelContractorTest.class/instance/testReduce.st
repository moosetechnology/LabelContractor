tests
testReduce

	| reducedLabel |
	" if the contractor is an instance of RemoveSubstring so we instanciate it with a substring "
	 
	reducedLabel := aContractor reduce: exampleString.
	self assert: reducedLabel equals: self expectedReducedLabel.

	reducedLabel := aContractor reduce: 'A:user/exam/path/' , exampleString.
	self assert: reducedLabel equals: self expectedReducedLabel