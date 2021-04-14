tests
testRemoveOneChar

	| labelBefore labelAfter |
	labelBefore := ''.
	labelAfter := (labelContractor removeOneChar: labelBefore) at: 2.
	self assert: labelAfter equals: labelBefore.
	
	labelBefore := 'SWmaclassavecuntresgrandnom.txt'.
	labelAfter := (labelContractor removeOneChar: labelBefore) at: 2.
	self assert: labelAfter equals: 'SWmaclassavcuntresgrandnom.txt'.
	
	