reduce-label
reduce: aString
	
	| string |
	string := aString.
	self strategy do: [ :each | string := each reduce: string ].
	^ string