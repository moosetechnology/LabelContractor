tests
testRemoveOneChar

	| labelBefore labelAfter |
	labelBefore := ''.
	labelAfter := labelContractor removeOneChar: labelBefore.
	self assert: labelAfter equals: labelBefore.

	labelBefore := 'SWAnExampleOfTheClass.txt'.
	labelAfter := labelContractor removeOneChar: labelBefore.
	self assert: labelAfter equals: 'SWAnExamplOfTheClass.txt'