accessing
letterFrequency: aString
	"The argument 'aString' represents a Character in a string format. I return the frequency of the character"	
	
	"LbCRemoveFrequentLettersStrategy new letterFrequency: 'h' >>> 0.737 "

	^ self class frequentLetters at: aString ifAbsent: [ 12 ]