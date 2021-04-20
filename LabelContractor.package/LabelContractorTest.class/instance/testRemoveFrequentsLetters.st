tests
testRemoveFrequentsLetters
	" By default, the size of the reduced string will be 3.
	  So the 'removeFrequentsLetters: aString' method is based on the default size.
	"
	
	| labelBefore labelAfter |
	labelBefore := ''.
	labelAfter := labelContractor removeFrequentsLetters: labelBefore.
	self assert: labelAfter equals: labelBefore .
	
	labelBefore := 'hello'.
	labelAfter := labelContractor removeFrequentsLetters: labelBefore.
	self assert: labelAfter equals: 'hlo'.