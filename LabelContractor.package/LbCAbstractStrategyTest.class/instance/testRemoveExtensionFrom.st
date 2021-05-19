tests
testRemoveExtensionFrom 
	
	self assert: (LbCAbstractStrategy removeExtensionFrom: '' ) equals: String empty.
	self assert: (LbCAbstractStrategy removeExtensionFrom: 'withoutExtension' ) equals: 'withoutExtension'. 
	self assert: (LbCAbstractStrategy removeExtensionFrom: 'something.txt') equals: 'something'.
	self assert: (LbCAbstractStrategy removeExtensionFrom: 'something.txt.exe') equals: 'something'
