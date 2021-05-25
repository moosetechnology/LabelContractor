accessing
letterFrequency: aString
	"The argument 'aString' represents a character in a string format. The method returns the frequency of the character."	
	"LbCRemoveFrequentLettersStrategy new letterFrequency: 'h' >>> 0.737 "

	^ self class frequentLetters at: aString ifAbsent: [ 12 ]