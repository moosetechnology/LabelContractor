reduce-label
privateReduce: aString extension: extensionAsString

	^ (self removeAll: self collectionOfSubstrings from: aString), extensionAsString.
	