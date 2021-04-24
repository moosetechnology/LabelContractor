tests
testPickFirstLettersShortString

	| labelBefore labelAfter |

	labelBefore := 'Short'.
	labelAfter := aContractor  reduce: labelBefore.
	self assert: labelAfter equals: 'Short'