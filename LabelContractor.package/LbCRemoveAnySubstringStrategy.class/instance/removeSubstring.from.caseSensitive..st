private
removeSubstring: aSubstring from: aString caseSensitive: bool
		
		 "
			remove all occurrences of substring from the string, respecting the case sensitive
		 "
	   ^ bool
		     ifTrue: [ aString copyReplaceAll: aSubstring asString with: '' ]
		     ifFalse: [ 
			     | string indexSubstring substringToRemove |
			     string := aString.
			     indexSubstring := string findString: aSubstring startingAt: 1 caseSensitive: false.
			     [ indexSubstring > 0 ] whileTrue: [ 
				     substringToRemove := string copyFrom: indexSubstring to: (indexSubstring + aSubstring size) - 1.
				     string := string copyReplaceAll: substringToRemove with: ''.
				     indexSubstring := string findString: aSubstring startingAt: 1 caseSensitive: false ].
			     string ]