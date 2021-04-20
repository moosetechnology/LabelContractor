no-path
noPath: aString

	" Remove the path part of the String
	  If the label doesn't contain the path side so we return the same string
	  
	  For example: 1. 'A:example/path/file.ext' -> returns: 'file.ext'
	               2. 'file.ext' -> returns: 'file.txt'
	"

	| dividedLabel |
	dividedLabel := '/' split: aString.
	^ dividedLabel  isEmpty
		  ifTrue: [ aString ]
		  ifFalse: [ dividedLabel last ]