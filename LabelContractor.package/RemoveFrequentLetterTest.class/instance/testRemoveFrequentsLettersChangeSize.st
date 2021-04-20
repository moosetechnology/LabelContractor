tests
testRemoveFrequentsLettersChangeSize

	| contractorSpecifySize labelBefore labelAfter |

	contractorSpecifySize :=  (labelContractorStrategy upTo: 12).

	labelBefore := 'AnExampleWithExtension.txt'.
	labelAfter := contractorSpecifySize reduce: labelBefore.
	self assert: labelAfter equals: 'xmplWihxnion.txt'.

	labelBefore := 'AnExampleWithOutExtension'.
	labelAfter := contractorSpecifySize reduce: labelBefore.
	self assert: labelAfter equals: 'xmplWihOuxio'.