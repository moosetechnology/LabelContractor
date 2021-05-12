reduce-label
reduce: aString

	| string |
	string := aString.
	^ self strategy ifNotNil: [ strategy reduce: string ] ifNil: [ 
		  self collectionOfStrategy do: [ :each | 
			  string := each reduce: string ].
		  string ]