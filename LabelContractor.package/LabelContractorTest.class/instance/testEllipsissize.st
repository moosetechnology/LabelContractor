tests
testEllipsissize

	| labelBefore labelAfter labelSize ext |
	labelBefore := 'SWLabelWithAnExtension.txt'.
	labelAfter := LabelContractor ellipsis: labelBefore size: 8.
	self assert: labelAfter equals: 'SWLa...sion.txt'.

	labelBefore := 'SWLabelWithoutExtension'.
	labelAfter := LabelContractor ellipsis: labelBefore size: 8.
	self assert: labelAfter equals: 'SWLa...sion'.

	labelBefore := 'SWLabelSmall'.
	labelSize := labelBefore size.
	labelAfter := LabelContractor ellipsis: labelBefore size: labelSize.
	self assert: labelAfter equals: 'SWLabelSmall'.

	labelBefore := 'SWLabelSmall.txt'.
	ext := LabelContractor getExtensionLabel: labelBefore.
	labelSize := (labelBefore copyReplaceAll: ext with: '') size.
	labelAfter := LabelContractor ellipsis: labelBefore size: labelSize.
	self assert: labelAfter equals: 'SWLabelSmall.txt'