private
removeFrequentLetters: aString

	"	
		Return a string without frequent character. 
		By default, we reduce the string until it has a size of 8 characters.
		
		If the string contains an extension, then we will not consider 'the extension part' in the reduction. In addition, the result will contain the extension added at the end.
	
	"
	
	| str |
	str := aString.
	[ str size > self upTo ] whileTrue: [ 
		str := self removeOneFrequentLetter: str ].
	^ str