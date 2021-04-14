tests
testRemoveFrequentsLetters

	| labelBefore labelAfter |
	labelBefore := ''.
	labelAfter := LabelContractor removeFrequentsLetters: labelBefore upTo:3.
	self assert: labelAfter equals: labelBefore .
	
	labelBefore := 'SWmaclassavecuntresgrandnom.txt'.
	labelAfter := LabelContractor removeFrequentsLetters: labelBefore upTo:3.
	self assert: labelAfter equals: 'SWmaclassavcuntrsgrandnom.txt'.
	
	