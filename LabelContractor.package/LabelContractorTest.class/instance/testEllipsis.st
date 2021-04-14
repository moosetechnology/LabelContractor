tests
testEllipsis
	| labelCon labelBefore labelAfter labelSize ext |
	"instance creation without specifying the size of the reduction, then 8 will be the default size."
	labelCon := LabelContractor new.
	
	labelBefore := 'SWLabelWithAnExtension.txt'.
	labelAfter := labelCon ellipsis: labelBefore.
	self assert: labelAfter equals: 'SWLa...sion.txt'.

	labelBefore := 'SWLabelWithoutExtension'.
	labelAfter := labelCon ellipsis: labelBefore.
	self assert: labelAfter equals: 'SWLa...sion'.

	labelBefore := 'SWSmall'.
	labelSize := labelBefore size.
	labelAfter := labelCon ellipsis: labelBefore .
	self assert: labelAfter equals: 'SWSmall'.

	labelBefore := 'SWSmall.txt'.
	ext := labelContractor getExtensionLabel: labelBefore.
	labelSize := (labelBefore copyReplaceAll: ext with: '') size.
	labelAfter := labelCon ellipsis: labelBefore.
	self assert: labelAfter equals: 'SWSmall.txt'.
	
	"instance creation withspecifying the size of the reduction"
	labelCon := LabelContractor new: 10.
	labelBefore := 'SWLabelWithAnExtension.txt'.
	labelAfter := labelCon ellipsis: labelBefore.
	self assert: labelAfter equals: 'SWLab...nsion.txt'.
	
	labelBefore := 'SWSmall'.
	labelSize := labelBefore size.
	labelAfter := labelCon ellipsis: labelBefore .
	self assert: labelAfter equals: 'SWSmall'.