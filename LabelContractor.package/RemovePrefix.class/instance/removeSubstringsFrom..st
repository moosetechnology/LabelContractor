private
removeSubstringsFrom: aString
	
	self collectionOfSubstrings do: [ :substring |
		| substringToString |
		substringToString := substring asString.
		(aString findString: substringToString startingAt: 1 caseSensitive: self caseSensitive) = 1
			ifTrue: [ ^ aString withoutPrefix: (aString copyFrom: 1 to: substringToString size) ] .
	]. 
	^ aString		
			 