tests
testFindFirstFrequentLetter

	| string indexFirstFreqLetter |

	string := 'hello'.
	indexFirstFreqLetter := labelContractorStrategy findFirstFrequentLetter: string.
	" 'e' is the first frequent letter in the example 'hello' "
	self assert: indexFirstFreqLetter equals: (string indexOf: $e).

	string := ''.
	indexFirstFreqLetter := labelContractorStrategy findFirstFrequentLetter: string.
	self assert: indexFirstFreqLetter equals: 0.