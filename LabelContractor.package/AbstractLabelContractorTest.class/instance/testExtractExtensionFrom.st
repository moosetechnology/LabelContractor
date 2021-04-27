tests
testExtractExtensionFrom
	
	self assert: (LabelContractor extractExtensionFrom: '' ) equals: String empty.
	self assert: (LabelContractor extractExtensionFrom: 'withoutExtension' ) equals: String empty.
	self assert: (LabelContractor extractExtensionFrom: 'something.txt') equals: '.txt'.
	self assert: (LabelContractor extractExtensionFrom: 'something.txt.exe') equals: '.exe'