tests
testTextForAnObject

	| anObject textFor |
	
	anObject := ByteString.
	textFor := self shapeBuilder textFor: anObject.
	self assert: textFor equals: anObject asString