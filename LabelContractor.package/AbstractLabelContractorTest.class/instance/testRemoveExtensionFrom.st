tests
testRemoveExtensionFrom 
	
	self assert: (LabelContractor removeExtensionFrom: '' ) equals: String empty.
	self assert: (LabelContractor removeExtensionFrom: 'withoutExtension' ) equals: 'withoutExtension'.
	self assert: (LabelContractor removeExtensionFrom: 'something.txt') equals: 'something'.
	self assert: (LabelContractor removeExtensionFrom: 'something.txt.exe') equals: 'something'
