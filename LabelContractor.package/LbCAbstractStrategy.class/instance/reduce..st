reduce-label
reduce: aString

	"Reduce a string by removing path if it's a fully qualified name(by default), then apply a contraction strategy. Returns the reduced string."
	
	| extension stringWithNoExtension |
	aString isEmpty ifTrue: [ ^ aString ]. 
	extension := self class joinExtractedExtensions: (self class extractExtensionsFrom: aString).
	stringWithNoExtension := self class removeExtensionsFrom: aString.
	^ self privateReduce: stringWithNoExtension extension: extension.
