tests - empty
testEmptyCollection

	| labelAfter |

	labelAfter := (self classToTest new with: '') reduce: exampleString.
	self assert: labelAfter equals: exampleString.
	
	labelAfter := (self classToTest new withAll: {}) reduce: exampleString.
	self assert: labelAfter equals: exampleString