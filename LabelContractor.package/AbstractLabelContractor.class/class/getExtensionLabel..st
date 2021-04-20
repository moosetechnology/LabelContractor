methods
getExtensionLabel: aString

	"	Returns the extension of the label. 
		If the label doesn't contain any extension, so we return an empty string
		If the label contains more than one extension (eg: fileName.txt.st) so we return the last one
	"

	| noExtension extPoint splitedStr |
	noExtension := ''.
	extPoint := $..
	^ (aString anySatisfy: [ :each | each = extPoint ])
		  ifTrue: [ 
			  splitedStr := extPoint split: aString.
			  extPoint asString , splitedStr last ]
		  ifFalse: [ noExtension ]