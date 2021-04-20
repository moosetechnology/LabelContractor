tests
testPickFirstLetters

	" By default, the number of letters taken is 8 
	
	"
	
	| labelBefore labelAfter |
	labelBefore := ''.
	labelAfter := labelContractorStrategy  reduce: labelBefore.
	self assert: labelAfter equals: ''.

	labelBefore := 'SWAnExampleOfClass.txt'.
	labelAfter := labelContractorStrategy  reduce: labelBefore.
	self assert: labelAfter equals: 'SWAnExam.txt'.
