tests
testFindFirstFrequentLetter

	| string indexFirstFreqLetter |
	
	string := 'hello'.
	indexFirstFreqLetter := labelContractor findFirstFrequentLetter: string.
	" 'e' is the first frequent letter in the example 'hello' "
	self assert: indexFirstFreqLetter equals: (string indexOf: $e).
	
	string := ''.
	indexFirstFreqLetter := labelContractor findFirstFrequentLetter: string.
	self assert: indexFirstFreqLetter equals: 0.