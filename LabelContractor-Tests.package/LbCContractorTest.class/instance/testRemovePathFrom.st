tests
testRemovePathFrom
	
	self assert: (contractor class removePathFrom: '' ) equals: String empty.
	self assert: (contractor class removePathFrom: 'withoutPath' ) equals: 'withoutPath'.
	self assert: (contractor class removePathFrom: 'A:path/example/something') equals: 'something'.
