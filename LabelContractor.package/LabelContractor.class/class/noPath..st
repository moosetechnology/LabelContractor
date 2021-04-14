methods
noPath: aString

	| dividedString |
	dividedString := '/' split: aString.
	dividedString isEmpty
		ifTrue: [ ^ '' ]
		ifFalse: [ ^ dividedString at: (dividedString size) ]