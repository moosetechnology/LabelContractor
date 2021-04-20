tests
testRemoveOneFrequentLetter

	| labelBefore labelAfter |
	labelBefore := ''.
	labelAfter := labelContractorStrategy removeOneFrequentLetter: labelBefore.
	self assert: labelAfter equals: labelBefore.

	labelBefore := 'AnExampleOfTheClass.txt'.
	labelAfter := labelContractorStrategy removeOneFrequentLetter: labelBefore.
	" One $e is deleted on: ...Example...txt -> ...Exampl..txt "
	self assert: labelAfter equals: 'AnExamplOfTheClass.txt'