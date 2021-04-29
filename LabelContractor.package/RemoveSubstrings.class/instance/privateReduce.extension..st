reduce-label
privateReduce: aString extension: extensionAsString

	^ self collectionOfSubstrings isEmpty
		  ifTrue: [ aString , extensionAsString ]
		  ifFalse: [ self removeSubstringsFrom: aString , extensionAsString ]