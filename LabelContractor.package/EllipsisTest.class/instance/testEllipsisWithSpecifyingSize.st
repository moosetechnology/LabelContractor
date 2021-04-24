tests
testEllipsisWithSpecifyingSize

	| labelBefore labelAfter |
	
	labelBefore := 'ALongLabelWithOutExtension'.
	
	" odd size value "
	aContractor ellipsisSize: 5.
	labelAfter := aContractor reduce: labelBefore.
	self assert: labelAfter equals: 'AL...ion'. 
	
	" even size value "
	aContractor ellipsisSize: 10.
	labelAfter := aContractor reduce: labelBefore.
	self assert: labelAfter equals: 'ALong...nsion'. 
	
	