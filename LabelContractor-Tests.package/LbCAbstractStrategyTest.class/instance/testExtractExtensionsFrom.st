tests
testExtractExtensionsFrom

	self assert: (LbCAbstractStrategy extractExtensionsFrom: '')
			equals: OrderedCollection new.
	
	self assert: (LbCAbstractStrategy extractExtensionsFrom: 'something')
			equals: OrderedCollection new.
	
	self assert: (LbCAbstractStrategy extractExtensionsFrom: 'something.txt')
			equals: #( 'txt' ) asOrderedCollection.
	
	self assert: (LbCAbstractStrategy extractExtensionsFrom: 'something.txt.exe')
			equals: #( 'txt' 'exe' ) asOrderedCollection