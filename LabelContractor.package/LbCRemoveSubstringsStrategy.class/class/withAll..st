instance creation
withAll: aCollectionOfSubstrings

	^ aCollectionOfSubstrings isString
		  ifTrue: [ ^ self with: aCollectionOfSubstrings ]
		  ifFalse: [ ^ self new collectionOfSubstrings: aCollectionOfSubstrings  ]