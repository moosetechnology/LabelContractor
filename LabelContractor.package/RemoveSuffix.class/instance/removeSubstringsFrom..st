private
removeSubstringsFrom: aString

	self collectionOfSubstrings do: [ :substring | 
		| substringToString |
		substringToString := substring asString.
		(aString endsWith: substringToString caseSensitive: self caseSensitive) 
			ifTrue: [  " if the current substring is the suffix of the string then we remove it, then return the result "
				| indexOfSuffix |
				indexOfSuffix := aString size - substringToString size.
				^ aString withoutSuffix:
					  (aString copyFrom: indexOfSuffix + 1 to: aString size) ] ].
	^ aString