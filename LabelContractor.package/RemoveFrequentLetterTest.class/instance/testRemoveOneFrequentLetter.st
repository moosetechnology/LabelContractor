tests
testRemoveOneFrequentLetter

	| labelBefore labelAfter |
	labelBefore := ''.
	labelAfter := aContractor removeOneFrequentLetter: labelBefore.
	self assert: labelAfter equals: labelBefore.

	labelBefore := 'AnExampleOfTheClass.txt'.
	labelAfter := aContractor removeOneFrequentLetter: labelBefore.
	" One $e is deleted on: ...Example...txt -> ...Exampl..txt "
	self assert: labelAfter equals: 'AnExamplOfTheClass.txt'