tests
testReduceWhenUntilUnderZero

	| labelAfter |
	
	labelAfter := (aContractor until: 0) reduce: exampleString.
	self assert: labelAfter equals: exampleString . 
	
	labelAfter := (aContractor until: -1) reduce: exampleString .
	self assert: labelAfter equals: exampleString . 
	
	
	
	