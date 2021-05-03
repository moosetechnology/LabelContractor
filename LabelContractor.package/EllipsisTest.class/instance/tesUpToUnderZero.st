tests
tesUpToUnderZero

	| labelBefore labelAfter |
	
	labelBefore := 'ALongLabelWithOutExtension'.
	
	aContractor upTo: 0.
	labelAfter := aContractor reduce: labelBefore.
	self assert: labelAfter equals: labelBefore . 
	
	aContractor upTo: -1.
	labelAfter := aContractor reduce: labelBefore.
	self assert: labelAfter equals: labelBefore . 
	
	
	
	