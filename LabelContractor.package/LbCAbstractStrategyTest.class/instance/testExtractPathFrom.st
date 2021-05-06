tests
testExtractPathFrom
	
	self assert: (LbCAbstractStrategy extractPathFrom: '' ) equals: String empty.
	self assert: (LbCAbstractStrategy extractPathFrom: 'withoutPath' ) equals: String empty.
	self assert: (LbCAbstractStrategy extractPathFrom: 'A:path/example/something') equals: 'A:path/example/'.
