reduce-label
reduce: aString

	| string |
	string := aString.
	self collectionOfStrategy do: [ :each | 
		  string := each reduce: string ].
	^ string