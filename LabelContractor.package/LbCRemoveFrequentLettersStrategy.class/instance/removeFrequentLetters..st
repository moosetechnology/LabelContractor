private
removeFrequentLetters: aString

	"	Return a string without frequent letters. By default, we reduce the string until it has a size of 8 characters. 
		Note: If the suffix of the string(if the string represents a fully qualified name) represents an extension (eg: '.txt', '.st', ...), then we keep it "
	
	| str |
	str := aString.
	[ str size > self upTo ] whileTrue: [ 
		str := self removeOneFrequentLetter: str ].
	^ str