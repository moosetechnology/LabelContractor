tests
testRemoveFrequentLettersChangeSize

	| contractorSpecifySize labelBefore labelAfter |

	contractorSpecifySize :=  (aContractor upTo: 12).

	labelBefore := 'AnExampleWithExtension.txt'.
	labelAfter := contractorSpecifySize reduce: labelBefore.
	self assert: labelAfter equals: 'AxmplWihxion.txt'.

	labelBefore := 'AnExampleWithOutExtension'.
	labelAfter := contractorSpecifySize reduce: labelBefore.
	self assert: labelAfter equals: 'AxmplWihOxio'.