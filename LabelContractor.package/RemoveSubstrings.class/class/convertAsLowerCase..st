private
convertAsLowerCase: aStringOrCollectionOfString

	| arrayWithLowerElements i |
	i := 1.
	aStringOrCollectionOfString isString
		ifTrue: [ ^ aStringOrCollectionOfString asLowercase ]
		ifFalse: [ 
			arrayWithLowerElements := Array new: aStringOrCollectionOfString size.
			aStringOrCollectionOfString do: [ :each | 
				arrayWithLowerElements at: i put: each asLowercase.
				i := i + 1 ].
			^ arrayWithLowerElements ]