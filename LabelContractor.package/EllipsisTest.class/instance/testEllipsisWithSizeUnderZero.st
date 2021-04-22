tests
testEllipsisWithSizeUnderZero

	| labelBefore labelAfter |
	
	labelBefore := 'ALongLabelWithOutExtension'.
	
	labelContractorStrategy ellipsisSize: 0.
	labelAfter := labelContractorStrategy reduce: labelBefore.
	self assert: labelAfter equals: labelBefore . 
	
	labelContractorStrategy ellipsisSize: -1.
	labelAfter := labelContractorStrategy reduce: labelBefore.
	self assert: labelAfter equals: labelBefore . 
	
	
	
	