accessing
namesAt: aCollectionOfIntegers

	^ aCollectionOfIntegers isInteger
		  ifTrue: [ self nameAt: aCollectionOfIntegers ]
		  ifFalse: [ indexes := aCollectionOfIntegers asOrderedCollection ]