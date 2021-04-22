accessing
textFor: anObject
	^ contractor reduce: (textBlock rsValue: anObject) asString