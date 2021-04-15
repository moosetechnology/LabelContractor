tests
testPickUpTo

	| labelBefore labelAfter |
	labelBefore := ''.
	labelAfter := labelContractor pick: labelBefore upTo: 6.
	self assert: labelAfter equals: ''.

	labelBefore := 'SWAnExampleOfClass.txt'.
	labelAfter := labelContractor pick: labelBefore upTo: 6.
	self assert: labelAfter equals: 'SWAnEx'.

	" case of short label "
	labelBefore := 'Short'.
	labelAfter := labelContractor pick: labelBefore upTo: 6.
	self assert: labelAfter equals: 'Short'