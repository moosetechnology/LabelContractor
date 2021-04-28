tests
testEllipsisWithSpecifyingSize

	| labelBefore labelAfter |
	
	labelBefore := 'ALongLabelWithOutExtension'.
	
	" odd size value "
	aContractor upTo: 5.
	labelAfter := aContractor reduce: labelBefore.
	self assert: labelAfter equals: 'AL..ion'. 
	
	" even size value "
	aContractor upTo: 10.
	labelAfter := aContractor reduce: labelBefore.
	self assert: labelAfter equals: 'ALong..nsion'. 
	
	