tests
testBaseName

	| labelBefore labelAfter |
	
	labelBefore := ''.
	labelAfter := labelContractor baseName: labelBefore .
	self assert: labelAfter equals: ''.
	
 	labelBefore := 'example/path/LabelWithExtension.txt'.
	labelAfter := labelContractor baseName: labelBefore .
	self assert: labelAfter equals: 'LabelWithExtension' .
	
	labelBefore := 'LabelWithExtension.txt'.
	labelAfter := labelContractor baseName: labelBefore .
	self assert: labelAfter equals: 'LabelWithExtension' .
	
	labelBefore := 'LabelWithOutExtension'.
	labelAfter := labelContractor baseName: labelBefore .
	self assert: labelAfter equals: 'LabelWithOutExtension' .
	
	labelBefore := 'example/path/LabelWithOutExtension'.
	labelAfter := labelContractor baseName: labelBefore .
	self assert: labelAfter equals: 'LabelWithOutExtension' .
	