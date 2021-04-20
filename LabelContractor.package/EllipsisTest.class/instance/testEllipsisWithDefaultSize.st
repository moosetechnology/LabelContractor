tests
testEllipsisWithDefaultSize

	" in what follows, we instantiate the LabelContractor without specifying the size of the ellipsis. 
	  In this case, the default size is 8 (that means: 4 first letters + '...' + 4 last letters)
	"

	| labelBefore labelAfter |
	labelBefore := 'ALabelWithAnExtension.txt'.
	labelAfter := labelContractorStrategy ellipsis: labelBefore.
	self assert: labelAfter equals: 'ALab...sion.txt'.

	labelBefore := 'ALabelWithOutExtension'.
	labelAfter := labelContractorStrategy ellipsis: labelBefore.
	self assert: labelAfter equals: 'ALab...sion'.

	
	
	
	