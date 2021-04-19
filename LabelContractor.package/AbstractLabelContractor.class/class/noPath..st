no-path
noPath: aLabel

	" Remove the path part of the Label
	  If the label doesn't contain the path side so we return the same string
	  
	  For example: 1. 'A:example/path/file.ext' -> returns: 'file.ext'
	               2. 'file.ext' -> returns: 'file.txt'
	"

	| dividedLabel |
	dividedLabel := '/' split: aLabel.
	^ dividedLabel  isEmpty
		  ifTrue: [ aLabel ]
		  ifFalse: [ dividedLabel last ]