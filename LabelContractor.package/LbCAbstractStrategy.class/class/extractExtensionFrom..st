private
extractExtensionFrom: aString

	"	if the string represents a file so we return its extension. 
		- if the string doesn't contain any extension, so we return an empty string
		- if the string contains more than one extension (eg: 'fileName.txt.st') so we return the last one"

	| noExtension extPoint splitedStr |
	noExtension := ''.
	extPoint := $..
	^ (aString anySatisfy: [ :each | each = extPoint ])
		  ifTrue: [ 
			  splitedStr := extPoint split: aString.
			  extPoint asString , splitedStr last ]
		  ifFalse: [ noExtension ]