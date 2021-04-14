tests
testNoPath
	| labelBefore labelAfter |
	labelBefore := ''.
	labelAfter := LabelContractor noPath: labelBefore.
	self assert: labelAfter equals: labelBefore.
	
	labelBefore := 'NoPath.txt'.
	labelAfter := LabelContractor noPath: labelBefore.
	self assert: labelAfter equals: labelBefore.
	
	labelBefore := 'A:/user/Foo/Bar/AnExmapleOfLongNameClass.txt'.
	labelAfter := LabelContractor noPath: labelBefore.
	self assert: labelAfter equals: 'AnExmapleOfLongNameClass.txt'
	