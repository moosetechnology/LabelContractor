tests
testRemoveFrequentLettersUpTo

	| labelBefore labelAfter |
	labelBefore := ''.
	labelAfter := labelContractorStrategy removeFrequentLetters: labelBefore upTo: 3.
	self assert: labelAfter equals: labelBefore .

	labelBefore := 'hello'.
	labelAfter := labelContractorStrategy removeFrequentLetters: labelBefore upTo: 4.
	self assert: labelAfter equals: 'hllo'.