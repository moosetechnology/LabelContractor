tests
testExtractExtensionFrom
	
	self assert: (LbCAbstractStrategy extractExtensionFrom: '' ) equals: String empty.
	self assert: (LbCAbstractStrategy extractExtensionFrom: 'withoutExtension' ) equals: String empty.
	self assert: (LbCAbstractStrategy extractExtensionFrom: 'something.txt') equals: '.txt'.
	self assert: (LbCAbstractStrategy extractExtensionFrom: 'something.txt.exe') equals: '.exe'