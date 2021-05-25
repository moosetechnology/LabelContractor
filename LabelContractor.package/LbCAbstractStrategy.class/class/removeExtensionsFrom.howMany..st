private
removeExtensionsFrom: aString howMany: aPositiveInteger

	" LbCAbstractStrategy removeExtensionsFrom: 'something.tar.gz' howMany: 1  >>> 'something.tar'"
	" LbCAbstractStrategy removeExtensionsFrom: 'something.txt.gz' howMany: 2 >>> 'something'"

	| string extractExtensions |
	string := aString.
	extractExtensions := (self extractExtensionsFrom: string) reversed.
	^ aPositiveInteger > extractExtensions size
		  ifTrue: [ self removeExtensionsFrom: string ]
		  ifFalse: [ 
			  (extractExtensions copyFrom: 1 to: aPositiveInteger) do: [ :each | 
				  string := self removeExtension: each from: string ].
				string ]