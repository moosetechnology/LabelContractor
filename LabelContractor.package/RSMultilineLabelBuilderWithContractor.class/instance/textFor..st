accessing
textFor: anObject

	^ contractor
		  ifNotNil: [ contractor reduce: (textBlock rsValue: anObject) asString ]
		  ifNil: [ super textFor: anObject ]