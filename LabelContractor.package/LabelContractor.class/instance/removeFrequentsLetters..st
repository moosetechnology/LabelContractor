removing
removeFrequentsLetters: aString

	" remove the most frequent character in a string "

	| str |
	str := aString.
	[ str size > self upTo ] whileTrue: [ str := self removeOneChar: str ].
	^ str