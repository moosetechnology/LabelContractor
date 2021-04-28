accessing
removeASubstring: aSubstring from: aString

	"
		Remove a substring from a string with case Sensitive 
	"

	^ (aString
		   includesSubstring: aSubstring caseSensitive: self caseSensitive)
		  ifTrue: [ self privateRemoveSubstrings: aSubstring from: aString ]
		  ifFalse: [ aString ]  " the string doesn't contain the substring, so the same string is returned "