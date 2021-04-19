tests
testEllipsis

	" in what follows, we instantiate the LabelContractor without specifying the size of the ellipsis. 
	  In this case, the default size is 8
	"

	| labelBefore labelAfter |
	labelBefore := 'SWLabelWithAnExtension.txt'.
	labelAfter := labelContractorStrategy ellipsis: labelBefore.
	self assert: labelAfter equals: 'SWLa...sion.txt'.

	labelBefore := 'SWLabelWithOutExtension'.
	labelAfter := labelContractorStrategy ellipsis: labelBefore.
	self assert: labelAfter equals: 'SWLa...sion'.

	labelBefore := 'Short'.
	labelAfter := labelContractorStrategy ellipsis: labelBefore.
	self assert: labelAfter equals: 'Short'.

	labelBefore := 'Short.txt'.
	labelAfter := labelContractorStrategy ellipsis: labelBefore.
	self assert: labelAfter equals: 'Short.txt'