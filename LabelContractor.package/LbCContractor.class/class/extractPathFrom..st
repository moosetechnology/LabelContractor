removing
extractPathFrom: aString

	" for the strings representing a fully qualified name, return the 'path' part of the string
	  For example: 1. 'A:example/path/file.ext' -> returns: 'A:example/path/'
	               2. 'file.ext' -> returns: '' "

	| delimiter |
	delimiter := $/.
	OSPlatform current isWindows ifTrue: [ delimiter := $\ ].
	^ aString copyFrom: 1 to: (aString lastIndexOf: delimiter)