tests
testRemoveOneFreqLetter

	| labelBefore labelAfter |
	labelBefore := ''.
	labelAfter := labelContractor removeOneFreqLetter: labelBefore.
	self assert: labelAfter equals: labelBefore.

	labelBefore := 'SWAnExampleOfTheClass.txt'.
	labelAfter := labelContractor removeOneFreqLetter: labelBefore.
	self assert: labelAfter equals: 'SWAnExamplOfTheClass.txt'