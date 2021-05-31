tests
testRemoveExtensionsFrom
	
	self assert: (LbCAbstractStrategy removeExtensionsFrom: '') equals: ''.
		
	self
		assert: (LbCAbstractStrategy removeExtensionsFrom: 'something.txt')
		equals: 'something'.

	self
		assert: (LbCAbstractStrategy removeExtensionsFrom: 'something.tar.gz')
		equals: 'something'.
	
	self
		assert: (LbCAbstractStrategy removeExtensionsFrom: 'something..txt')
		equals: 'something.'.
		
	self
		assert: (LbCAbstractStrategy removeExtensionsFrom: 'something')
		equals: 'something'.