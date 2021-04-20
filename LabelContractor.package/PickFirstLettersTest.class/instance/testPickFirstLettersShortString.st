tests
testPickFirstLettersShortString

	| labelBefore labelAfter |

	labelBefore := 'Short'.
	labelAfter := labelContractorStrategy  reduce: labelBefore.
	self assert: labelAfter equals: 'Short'