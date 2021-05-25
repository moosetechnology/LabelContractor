private
removeFrequentLetters: aString
	"Return a string without frequent letters. By default, i reduce the string until it has a size of 8 characters."
	
	| str |
	str := aString.
	[ str size > self upTo ] whileTrue: [ 
		str := self removeOneFrequentLetter: str ].
	^ str