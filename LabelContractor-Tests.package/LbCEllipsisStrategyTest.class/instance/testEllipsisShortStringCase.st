tests
testEllipsisShortStringCase

	| labelBefore labelAfter |

	labelBefore := 'Short'.
	labelAfter := aContractor reduce: labelBefore.
	self assert: labelAfter equals: 'Short'.

	labelBefore := 'Short.txt'.
	labelAfter := aContractor reduce: labelBefore.
	self assert: labelAfter equals: 'Short.txt'.