methods
getExtensionLabel: aString

	| noExtension extPoint splitedStr |
	noExtension := ''.
	extPoint := $..
	^ (aString anySatisfy: [ :each | each = extPoint ])
		  ifTrue: [ 
			  splitedStr := extPoint split: aString.
			  extPoint asString , splitedStr last ]
		  ifFalse: [ noExtension ]