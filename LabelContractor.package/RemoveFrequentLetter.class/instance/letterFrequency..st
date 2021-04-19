accessing
letterFrequency: aString

	"
		The argument 'aString' represents a character in a string format  
		The method returns the frequency of the character
		(eg: letterFrequency: 'h' -> returns: 0.737)
	"

	^ self class letterFrequency at: aString ifAbsent: [ 12 ]