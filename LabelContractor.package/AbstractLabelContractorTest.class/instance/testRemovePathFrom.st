tests
testRemovePathFrom
	
	self assert: (LabelContractor removePathFrom: '' ) equals: String empty.
	self assert: (LabelContractor removePathFrom: 'withoutPath' ) equals: 'withoutPath'.
	self assert: (LabelContractor removePathFrom: 'A:path/example/something') equals: 'something'.
