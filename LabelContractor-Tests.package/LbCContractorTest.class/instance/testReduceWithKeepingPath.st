tests
testReduceWithKeepingPath

	| reducedString |
	reducedString := contractor
								  ellipsis;
		                keepPath;
		                reduce: 'A:user/exam/path/', stringExample .
	self assert: reducedString equals: 'A:user/exam/path/some..Long'