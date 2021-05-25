private
removeSubstringsFrom: aString

	"I remove the prefix(or prefixes) from a string"
	
	| maxSizePrefix theRightPrefix |
	maxSizePrefix := 0.
	theRightPrefix := String new.
	self collectionOfSubstrings do: [ :substring | 
		(aString findString: substring startingAt: 1 caseSensitive: self caseSensitive) = 1 
			ifTrue: [ 
				substring size >= maxSizePrefix ifTrue: [ 
					maxSizePrefix := substring size.
					theRightPrefix := substring ] ] ].
	^ aString withoutPrefix: (aString copyFrom: 1 to: theRightPrefix size)