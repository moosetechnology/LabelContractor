tests
testEllipsisWithSpecifyingSize

	| ellipsisStrategySpecifySize labelBefore labelAfter |

	ellipsisStrategySpecifySize := labelContractorStrategy ellipsisSize: 10.

	labelBefore := 'ALongLabelWithAnExtension.txt'.
	labelAfter := ellipsisStrategySpecifySize reduce: labelBefore.
	self assert: labelAfter equals: 'ALong...nsion.txt'.

	labelBefore := 'ALongLabelWithOutExtension'.
	labelAfter := ellipsisStrategySpecifySize reduce: labelBefore.
	self assert: labelAfter equals: 'ALong...nsion'. 
