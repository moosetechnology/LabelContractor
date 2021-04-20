tests
testRemoveOneFrequentLetter

	| labelBefore labelAfter |
	labelBefore := ''.
	labelAfter := labelContractorStrategy removeOneFreqLetter: labelBefore.
	self assert: labelAfter equals: labelBefore.

	labelBefore := 'AnExampleOfTheClass.txt'.
	labelAfter := labelContractorStrategy removeOneFreqLetter: labelBefore.
	" One $e is deleted on: ...Example...txt -> ...Exampl..txt "
	self assert: labelAfter equals: 'AnExamplOfTheClass.txt'