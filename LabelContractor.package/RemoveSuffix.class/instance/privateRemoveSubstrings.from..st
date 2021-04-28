private
privateRemoveSubstrings: aSubstring from: aString

	| extractSubstring indexSubstring |

	self caseSensitive
		ifTrue: [ extractSubstring := aSubstring ]
		ifFalse: [ 
			indexSubstring := aString findString: aSubstring startingAt: 1 caseSensitive: self caseSensitive.
		  [ indexSubstring + aSubstring size - 1 ~= aString size ] whileTrue: [ 
				indexSubstring := aString
					                  findString: aSubstring
					                  startingAt: indexSubstring + aSubstring size
					                  caseSensitive: self caseSensitive.
				indexSubstring = 0 ifTrue: [ ^ aString ]	 ].
			extractSubstring := aString copyFrom: indexSubstring to: aSubstring size + indexSubstring - 1 ].
	^ aString withoutSuffix: extractSubstring  