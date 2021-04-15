frequent-letter
removeOneFreqLetter: aString

	" return a reduced string after removing one frequent letter from "

	| indexFirstFreqLetter |
	indexFirstFreqLetter := self findFirstFrequentLetter: aString.
	^ (indexFirstFreqLetter < 1)
		  ifTrue: [ aString ]
		  ifFalse: [ aString copyWithoutIndex: indexFirstFreqLetter ]