accessing
removeString: aSubstring from: aString

	"
		Remove a substring from a string with case Sensitive 
	"

	| indexSubstring |
	indexSubstring := self indexOfSubstring: aSubstring from: aString.
	^ indexSubstring = 0
		  ifTrue: [ aString ]
		  ifFalse: [ aString copyReplaceAll: aSubstring with: '' ]