reduce-label
privateReduce: aString extension: extensionAsString

	^ (self privateRemoveSubstring: self collectionOfSubstrings from: aString), extensionAsString.
	