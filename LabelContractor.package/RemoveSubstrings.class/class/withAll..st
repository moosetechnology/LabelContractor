instance creation
withAll: aCollectionOfSubstrings

	^ aCollectionOfSubstrings isString
		  ifTrue: [ ^ self new with: aCollectionOfSubstrings ]
		  ifFalse: [ ^ self new withAll: aCollectionOfSubstrings ]