removing
removeFrequentsLetters: aString upTo: anInteger

	" remove the most frequent character in a string "

	| str |
	str := aString.
	[ str size > anInteger ] whileTrue: [ str := self removeOneFreqLetter: str ].
	^ str