tests
testRemoveFrequentLettersUpTo

	| labelBefore labelAfter |
	labelBefore := ''.
	labelAfter := aContractor removeFrequentLetters: labelBefore upTo: 3.
	self assert: labelAfter equals: labelBefore .

	labelBefore := 'hello'.
	labelAfter := aContractor removeFrequentLetters: labelBefore upTo: 4.
	self assert: labelAfter equals: 'hllo'.