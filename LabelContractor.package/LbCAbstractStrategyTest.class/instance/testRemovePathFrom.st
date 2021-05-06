tests
testRemovePathFrom
	
	self assert: (LbCAbstractStrategy removePathFrom: '' ) equals: String empty.
	self assert: (LbCAbstractStrategy removePathFrom: 'withoutPath' ) equals: 'withoutPath'.
	self assert: (LbCAbstractStrategy removePathFrom: 'A:path/example/something') equals: 'something'.
