tests
testEllipsisWithSizeEqualsOne

	| labelBefore labelAfter |
	
	labelBefore := 'ALongLabelWithOutExtension'.
	
	aContractor ellipsisSize: 1.
	labelAfter := aContractor reduce: labelBefore.
	self assert: labelAfter equals: 'A'. 
	
	
	
	