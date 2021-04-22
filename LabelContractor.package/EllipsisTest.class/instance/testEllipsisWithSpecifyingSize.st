tests
testEllipsisWithSpecifyingSize

	| labelBefore labelAfter |
	
	labelBefore := 'ALongLabelWithOutExtension'.
	
	" odd size value "
	labelContractorStrategy ellipsisSize: 5.
	labelAfter := labelContractorStrategy reduce: labelBefore.
	self assert: labelAfter equals: 'AL...ion'. 
	
	" even size value "
	labelContractorStrategy ellipsisSize: 10.
	labelAfter := labelContractorStrategy reduce: labelBefore.
	self assert: labelAfter equals: 'ALong...nsion'. 
	
	