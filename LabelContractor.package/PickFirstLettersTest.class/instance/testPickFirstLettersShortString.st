tests
testPickFirstLettersShortString

	| labelBefore labelAfter |

	labelBefore := 'Short'.
	labelAfter := labelContractorStrategy  pickFirstLetters: labelBefore.
	self assert: labelAfter equals: 'Short'