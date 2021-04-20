tests
testEllipsissize

	" this test concerns the use of the ellipsisSize method parameterized by size the ellipsis
	"

	| labelBefore labelAfter sizeEllpsTooBig ext |
	labelBefore := 'SWLabelWithAnExtension.txt'.
	labelAfter := LabelContractor ellipsis: labelBefore size: 10.
	self assert: labelAfter equals: 'SWLab...nsion.txt'.

	labelBefore := 'SWLabelWithoutExtension'.
	labelAfter := LabelContractor ellipsis: labelBefore size: 10.
	self assert: labelAfter equals: 'SWLab...nsion'.

	labelBefore := 'SWLabelSmall'.
	sizeEllpsTooBig := labelBefore size.
	labelAfter := LabelContractor
		              ellipsis: labelBefore
		              size: sizeEllpsTooBig.
	self assert: labelAfter equals: 'SWLabelSmall'.

	labelBefore := 'SWLabelSmall.txt'.
	ext := LabelContractor getExtensionLabel: labelBefore.
	sizeEllpsTooBig := (labelBefore copyReplaceAll: ext with: '') size.
	labelAfter := LabelContractor
		              ellipsis: labelBefore
		              size: sizeEllpsTooBig.
	self assert: labelAfter equals: 'SWLabelSmall.txt'