tests
testEllipsisShortStringCase

	| labelBefore labelAfter |

	labelBefore := 'Short'.
	labelAfter := labelContractorStrategy reduce: labelBefore.
	self assert: labelAfter equals: 'Short'.

	labelBefore := 'Short.txt'.
	labelAfter := labelContractorStrategy reduce: labelBefore.
	self assert: labelAfter equals: 'Short.txt'.