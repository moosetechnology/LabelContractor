letter-frequency
frequentLetters

	^ FrequentLetters ifNil: [ self createFrequentLettersDictionary ]