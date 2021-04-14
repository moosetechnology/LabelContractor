tests
testFindFirstFrequentLetter

	| string indexFreqLetter |
	
	string := 'hello'.
	indexFreqLetter := labelContractor findFirstFrequentLetter: string.
	self assert: indexFreqLetter equals: (string indexOf: $e).
	
	string := ''.
	indexFreqLetter := labelContractor findFirstFrequentLetter: string.
	self assert: indexFreqLetter equals: 0.