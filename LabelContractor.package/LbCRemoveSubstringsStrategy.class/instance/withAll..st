instance creation
withAll: aCollectionOfSubstrings

	^ aCollectionOfSubstrings isString
		  ifTrue: [ ^ self with: aCollectionOfSubstrings ]
		  ifFalse: [ ^ self collectionOfSubstrings: aCollectionOfSubstrings  ]