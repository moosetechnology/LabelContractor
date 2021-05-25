instance creation
withAll: aCollectionOfSubstrings
	
	"use me if you want to remove more than one subtring"
	
	^ aCollectionOfSubstrings isString
		  ifTrue: [ ^ self with: aCollectionOfSubstrings ]
		  ifFalse: [ ^ self collectionOfSubstrings: aCollectionOfSubstrings  ]