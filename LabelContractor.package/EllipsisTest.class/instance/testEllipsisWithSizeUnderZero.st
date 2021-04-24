tests
testEllipsisWithSizeUnderZero

	| labelBefore labelAfter |
	
	labelBefore := 'ALongLabelWithOutExtension'.
	
	aContractor ellipsisSize: 0.
	labelAfter := aContractor reduce: labelBefore.
	self assert: labelAfter equals: labelBefore . 
	
	aContractor ellipsisSize: -1.
	labelAfter := aContractor reduce: labelBefore.
	self assert: labelAfter equals: labelBefore . 
	
	
	
	