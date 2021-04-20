tests
testRemoveFrequentsLettersChangeSize

	| contractorSpecifySize labelBefore labelAfter |

	contractorSpecifySize :=  (labelContractorStrategy upTo: 12).

	labelBefore := 'AnExampleWithExtension.txt'.
	labelAfter := contractorSpecifySize removeFrequentLetters: labelBefore.
	self assert: labelAfter equals: 'xmplWihxnion.txt'.

	labelBefore := 'AnExampleWithOutExtension'.
	labelAfter := contractorSpecifySize removeFrequentLetters: labelBefore.
	self assert: labelAfter equals: 'xmplWihOuxio'.