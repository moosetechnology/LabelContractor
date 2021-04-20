tests
testEllipsisShortStringCase

	| labelBefore labelAfter |

	labelBefore := 'Short'.
	labelAfter := labelContractorStrategy ellipsis: labelBefore.
	self assert: labelAfter equals: 'Short'.

	labelBefore := 'Short.txt'.
	labelAfter := labelContractorStrategy ellipsis: labelBefore.
	self assert: labelAfter equals: 'Short.txt'.