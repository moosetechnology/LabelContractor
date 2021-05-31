tests
testReduceWithoutKeepingPath

	| reducedString |
	 
	reducedString := contractor 
								  ellipsis;
		                reduce: stringExample .
	self assert: reducedString equals: 'some..Long'.