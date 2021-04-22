tests
testEllipsisWithSizeEqualsOne

	| labelBefore labelAfter |
	
	labelBefore := 'ALongLabelWithOutExtension'.
	
	labelContractorStrategy ellipsisSize: 1.
	labelAfter := labelContractorStrategy reduce: labelBefore.
	self assert: labelAfter equals: 'A'. 
	
	
	
	