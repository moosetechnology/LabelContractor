private
pickFirstLetters: aString
	
	"
		Use this method if you want to take the first 8 (default number) letters of the string
	"
	
	^ self pick: aString  upTo: (self upTo)