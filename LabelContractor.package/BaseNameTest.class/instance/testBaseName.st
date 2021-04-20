tests
testBaseName

	| labelBefore labelAfter |
	labelBefore := ''.
	labelAfter := labelContractorStrategy reduce: labelBefore.
	self assert: labelAfter equals: ''.

	labelBefore := 'LabelWithExtension.txt'.
	labelAfter := labelContractorStrategy reduce: labelBefore.
	self assert: labelAfter equals: 'LabelWithExtension'.

	labelBefore := 'LabelWithOutExtension'.
	labelAfter := labelContractorStrategy reduce: labelBefore.
	self assert: labelAfter equals: 'LabelWithOutExtension'