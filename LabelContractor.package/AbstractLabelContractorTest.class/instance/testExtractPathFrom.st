tests
testExtractPathFrom
	
	self assert: (LabelContractor extractPathFrom: '' ) equals: String empty.
	self assert: (LabelContractor extractPathFrom: 'withoutPath' ) equals: String empty.
	self assert: (LabelContractor extractPathFrom: 'A:path/example/something') equals: 'A:path/example/'.
