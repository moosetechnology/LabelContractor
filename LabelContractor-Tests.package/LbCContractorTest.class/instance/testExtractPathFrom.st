tests
testExtractPathFrom
	
	self assert: (contractor class extractPathFrom: '' ) equals: String empty.
	self assert: (contractor class extractPathFrom: 'withoutPath' ) equals: String empty.
	self assert: (contractor class extractPathFrom: 'A:path/example/something') equals: 'A:path/example/'.
