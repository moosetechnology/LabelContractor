methods
getExtensionLabel: aString

	| indexExt |
	indexExt := aString indexOf: $..
	indexExt == 0
		ifTrue: [  ^ '' ]
		ifFalse: [ ^ aString copyFrom: indexExt to: aString size ].