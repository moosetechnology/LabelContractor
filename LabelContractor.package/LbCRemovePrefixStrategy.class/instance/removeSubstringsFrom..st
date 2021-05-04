private
removeSubstringsFrom: aString
	"
		return a string without a prefix 
		Examples:
			>>> (RemovePrefix with: 'some') removeSubstringsFrom: 'something'
			'thing'
			>>> (RemovePrefix withAll: {'some'. 'thing'}) removeSubstringsFrom: 'something'
			'thing'
			>>> (RemovePrefix withAll: {'something'. 'some'}) removeSubstringsFrom: 'somethingElse'
			'Else'
	"
	| maxSizePrefix theRightPrefix |
	maxSizePrefix := (self collectionOfSubstrings at: 1) asString size.
	theRightPrefix := ''.
	self collectionOfSubstrings do: [ :substring | 
		| substringToString |
		substringToString := substring asString.
		(aString findString: substringToString startingAt: 1 caseSensitive: self caseSensitive) = 1 
			ifTrue: [ 
				substringToString size >= maxSizePrefix ifTrue: [ 
					maxSizePrefix := substringToString size.
					theRightPrefix := substringToString ] ] ].
	^ aString withoutPrefix:
		  (aString copyFrom: 1 to: theRightPrefix size)