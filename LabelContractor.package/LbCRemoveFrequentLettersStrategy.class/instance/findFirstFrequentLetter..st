private
findFirstFrequentLetter: aString

	"return the index of the first frequent letter on the string. If the string does not contain any frequent letters(or if an empty string), then 0 is returned"

	| startingIndex indexFreqLetter mostFrequentLetter currentLetter |
	startingIndex := self keepFirstLetterAndStartAtSecondOne.
	mostFrequentLetter := 0.
	indexFreqLetter := 0.
	startingIndex to: aString size do: [ :i |
		currentLetter := self letterFrequency: (aString copyFrom: i to: i).
		currentLetter > mostFrequentLetter ifTrue: [ 
			mostFrequentLetter := currentLetter.
			indexFreqLetter := i ]].
	^ indexFreqLetter