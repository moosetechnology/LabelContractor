removing
removeFrequentLetters: aString upTo: anInteger

	" 
		Remove the frequent letters in the string until having a length string designated by the parameter 'upTo'
	"

	| str |
	str := aString.
	[ str size > anInteger ] whileTrue: [ 
		str := self removeOneFreqLetter: str ].
	^ str