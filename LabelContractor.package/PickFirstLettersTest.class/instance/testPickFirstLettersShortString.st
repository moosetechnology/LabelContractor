tests
testPickFirstLettersShortString

	" By default, the number of letters taken is 8 
	
	"
	
	| labelBefore labelAfter |

	labelBefore := 'Short'.
	labelAfter := labelContractorStrategy  pickFirstLetters: labelBefore.
	self assert: labelAfter equals: 'Short'