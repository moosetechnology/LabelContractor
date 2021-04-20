tests
testRemoveFrequentsLetters

	" By default, the size of the reduced string will be 3.
	  So the 'removeFrequentsLetters: aString' method is based on the default size.
	"
	
	| labelBefore labelAfter |
	labelBefore := ''.
	labelAfter := labelContractorStrategy removeFrequentLetters: labelBefore.
	self assert: labelAfter equals: labelBefore .
	
	labelBefore := 'AnExampleWithExtension.txt'.
	labelAfter := labelContractorStrategy removeFrequentLetters: labelBefore.
	self assert: labelAfter equals: 'xmpWihxi.txt'.
	
	labelBefore := 'AnExampleWithOutExtension'.
	labelAfter := labelContractorStrategy removeFrequentLetters: labelBefore.
	self assert: labelAfter equals: 'xmpWihxi'.