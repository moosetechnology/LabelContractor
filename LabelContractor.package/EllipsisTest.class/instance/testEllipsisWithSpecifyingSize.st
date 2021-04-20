tests
testEllipsisWithSpecifyingSize

	| ellipsisStrategySpecifySize labelBefore labelAfter |
	
	ellipsisStrategySpecifySize := labelContractorStrategy ellipsisSize: 10.
	
	labelBefore := 'ALongLabelWithAnExtension.txt'.
	labelAfter := ellipsisStrategySpecifySize ellipsis: labelBefore.
	self assert: labelAfter equals: 'ALong...nsion.txt'.

	labelBefore := 'ALongLabelWithOutExtension'.
	labelAfter := ellipsisStrategySpecifySize ellipsis: labelBefore.
	self assert: labelAfter equals: 'ALong...nsion'.