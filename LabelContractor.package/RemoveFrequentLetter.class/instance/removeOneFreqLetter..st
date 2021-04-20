frequent-letter
removeOneFreqLetter: aString

	" return a reduced string after removing one frequent letter "

	| indexFirstFreqLetter |
	indexFirstFreqLetter := self findFirstFrequentLetter: aString.
	" checking if a frequent letter is present "
	^ indexFirstFreqLetter < 1
		  ifTrue: [ aString ]
		  ifFalse: [ aString copyWithoutIndex: indexFirstFreqLetter ]