private
removeFrequentLetters: aString upTo: anInteger

	" 
		Remove the frequent letters in the string until having a length string designated by the parameter 'upTo'
	"

	| reducedStr |
	reducedStr := aString.
	[ reducedStr size > anInteger ] whileTrue: [ 
		reducedStr := self removeOneFreqLetter: reducedStr ].
	^ reducedStr