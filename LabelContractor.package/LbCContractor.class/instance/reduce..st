reduce-label
reduce: aString
	"I apply the strategies of the collection one by one on the string passed as an argument. "

	| stringWithNoPath |
	stringWithNoPath := self class removePathFrom: aString.
	collectionOfStrategy do: [ :each | 
		stringWithNoPath := each reduce: stringWithNoPath ].
	^ withPath
		  ifTrue: [ (self class extractPathFrom: aString) , stringWithNoPath ]
		  ifFalse: [ stringWithNoPath ]