tests
testRemoveFrequentsLettersUpTo

	| labelBefore labelAfter |
	labelBefore := ''.
	labelAfter := labelContractor removeFrequentsLetters: labelBefore upTo: 3.
	self assert: labelAfter equals: labelBefore .
	
	labelBefore := 'hello'.
	labelAfter := labelContractor removeFrequentsLetters: labelBefore upTo: 4.
	self assert: labelAfter equals: 'hllo'.
	
	