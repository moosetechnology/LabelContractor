removing
removeFrequentsLetters: aString
	" remove the most frequent character in a string "
	| str mostFreqChar |
	str := aString.
	"mostFreqChar := (self removeOneChar: aString) at: 1.
	[str includes: mostFreqChar] whileTrue: [ str := (self removeOneChar: str) at:2 ]."
	[str size > self sizeTo ] whileTrue: [
			str := self removeOneChar: str].
	^ str.