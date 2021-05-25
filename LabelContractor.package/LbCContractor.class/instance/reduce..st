reduce-label
reduce: aString
	"I reduce aString according to the choosen strategies, but first of all I remove the path if aString is a fully qualified file name"

	| stringWithNoPath |
	stringWithNoPath := self class removePathFrom: aString.
	collectionOfStrategy do: [ :each | stringWithNoPath := each reduce: stringWithNoPath ].
	^ withPath
		  ifTrue: [ (self class extractPathFrom: aString) , stringWithNoPath ]
		  ifFalse: [ stringWithNoPath ]