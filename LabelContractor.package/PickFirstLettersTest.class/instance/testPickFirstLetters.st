tests
testPickFirstLetters

	" By default, the number of letters taken is 8 
	
	"
	
	| labelBefore labelAfter |
	labelBefore := ''.
	labelAfter := labelContractorStrategy  pickFirstLetters: labelBefore.
	self assert: labelAfter equals: ''.

	labelBefore := 'AnExampleOfClass.txt'.
	labelAfter := labelContractorStrategy  pickFirstLetters: labelBefore.
	self assert: labelAfter equals: 'AnExampl.txt'.

	" case of short label "
	labelBefore := 'Short'.
	labelAfter := labelContractorStrategy  pickFirstLetters: labelBefore.
	self assert: labelAfter equals: 'Short'