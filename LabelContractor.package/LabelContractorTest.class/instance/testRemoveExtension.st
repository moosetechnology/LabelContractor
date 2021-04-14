tests
testRemoveExtension
	| labelBefore labelAfter |
	
	labelBefore := ''.
	labelAfter  := labelContractor removeExtension: labelBefore.
	self assert: labelAfter equals: labelBefore  .
	
	labelBefore := 'LabelWithExtension.txt'.
	labelAfter  := labelContractor removeExtension: labelBefore.
	self assert: labelAfter equals: 'LabelWithExtension' .
	
	labelBefore := 'LabelWithoutExtension'.
	labelAfter  := labelContractor removeExtension: labelBefore.
	self assert: labelAfter equals: 'LabelWithoutExtension' .