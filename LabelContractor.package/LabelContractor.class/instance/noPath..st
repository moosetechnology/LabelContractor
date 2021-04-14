no-path
noPath: aString

	| dividedString |
	dividedString := '/' split: aString.
	^ dividedString isEmpty
		  ifTrue: [ aString ]
		  ifFalse: [ dividedString at: dividedString size ]