private
removeFrequentLetters: aString

	"	
		Return a string without frequent letters. 
		By default, we reduce the string until it has a size of 8 characters.
		
		If the suffix of the string represents an extension ('.txt', '.st', ...), then we keep it
	
	"
	
	| str |
	str := aString.
	[ str size > self upTo ] whileTrue: [ 
		str := self removeOneFrequentLetter: str ].
	^ str