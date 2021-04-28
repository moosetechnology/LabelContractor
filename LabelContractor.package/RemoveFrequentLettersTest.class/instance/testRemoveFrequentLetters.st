tests
testRemoveFrequentLetters

	" 
		By default, the size of the reduced string will be 8.
	"
	
	| labelBefore labelAfter |
	labelBefore := ''.
	labelAfter := aContractor reduce: labelBefore.
	self assert: labelAfter equals: labelBefore .
	
	labelBefore := 'AnExampleWithExtension.txt'.
	labelAfter := aContractor reduce: labelBefore.
	self assert: labelAfter equals: 'AxmWihxi.txt'.
	
	labelBefore := 'AnExampleWithOutExtension'.
	labelAfter := aContractor reduce: labelBefore.
	self assert: labelAfter equals: 'AxmWihxi'.