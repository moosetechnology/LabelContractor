tests - empty
testEmptyCollection

	| labelAfter |

	labelAfter := (self classToTest with: '') reduce: exampleString.
	self assert: labelAfter equals: exampleString.
	
	labelAfter := (self classToTest withAll: {}) reduce: exampleString.
	self assert: labelAfter equals: exampleString