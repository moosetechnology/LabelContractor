tests
testTextForAnObjectContracted
	
	| anObject aContractor expected  |
	
	aContractor := Ellipsis new.
	anObject := ByteString .
	
	self shapeBuilder contractor: Ellipsis new.
	
	expected := aContractor  reduce: anObject asString.
	self assert: (self shapeBuilder textFor: anObject) equals: expected.