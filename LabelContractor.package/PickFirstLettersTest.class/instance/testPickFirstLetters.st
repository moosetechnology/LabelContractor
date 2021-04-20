tests
testPickFirstLetters

	" By default, the number of letters taken is 8 
	
	"
	
	| labelBefore labelAfter |
	labelBefore := ''.
	labelAfter := labelContractorStrategy  pickFirstLetters: labelBefore.
	self assert: labelAfter equals: ''.

	labelBefore := 'SWAnExampleOfClass.txt'.
	labelAfter := labelContractorStrategy  pickFirstLetters: labelBefore.
	self assert: labelAfter equals: 'SWAnExam.txt'.
