no-path
getPath: aString
	" 
	  return the path part of the Label
	  For example: 1. 'A:example/path/file.ext' -> returns: 'A:example/path/'
	               2. 'file.ext' -> returns: ''
	"
	| delimiter |
	delimiter := $/.
	OSPlatform current isWindows ifTrue: [ delimiter := $\ ].
	^ aString copyFrom: 1 to: (aString lastIndexOf: delimiter )
	