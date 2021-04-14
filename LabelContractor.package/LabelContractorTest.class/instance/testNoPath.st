tests
testNoPath

	| labelBefore labelAfter |
	labelBefore := ''.
	labelAfter := labelContractor noPath: labelBefore.
	self assert: labelAfter equals: labelBefore.

	labelBefore := 'NoPath.txt'.
	labelAfter := labelContractor noPath: labelBefore.
	self assert: labelAfter equals: labelBefore.

	labelBefore := 'A:/user/Foo/Bar/AnExmapleOfLongNameClass.txt'.
	labelAfter := labelContractor noPath: labelBefore.
	self assert: labelAfter equals: 'AnExmapleOfLongNameClass.txt'