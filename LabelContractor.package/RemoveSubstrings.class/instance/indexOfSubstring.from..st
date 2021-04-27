accessing
indexOfSubstring: aSubstring from: aString

	"
		Return the index of the first letter of the substring from the string
	 	Return 0	if the string doesn't contain the subtring
		
		Examples:
		* Without case sensitive
		  self indexOfSubstring: 'some' from: 'thingOfSomething'ng'
		  returns 8 
		* with case sensitive
		  self indexOfSubstring: 'some' from: 'thingOfSomething'
		  return 0
	"

	^ aString
		  findString: aSubstring
		  startingAt: 1
		  caseSensitive: self caseSensitive