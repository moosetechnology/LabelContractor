tests
testBaseName

	| labelBefore labelAfter |
	labelBefore := ''.
	labelAfter := labelContractorStrategy baseName: labelBefore.
	self assert: labelAfter equals: ''.

	labelBefore := 'LabelWithExtension.txt'.
	labelAfter := labelContractorStrategy baseName: labelBefore.
	self assert: labelAfter equals: 'LabelWithExtension'.

	labelBefore := 'LabelWithOutExtension'.
	labelAfter := labelContractorStrategy baseName: labelBefore.
	self assert: labelAfter equals: 'LabelWithOutExtension'