tests
testRemoveExtensionsFromHowMany
		
	self
		assert: (LbCAbstractStrategy removeExtensionsFrom: 'something.tar.gz' howMany: 1 )
		equals: 'something.tar'.

	self
		assert: (LbCAbstractStrategy removeExtensionsFrom: 'something.tar.gz' howMany: 2)
		equals: 'something'.
	
	self
		assert: (LbCAbstractStrategy removeExtensionsFrom: 'something.tar.gz' howMany: 4)
		equals: 'something'.
		
	self
		assert: (LbCAbstractStrategy removeExtensionsFrom: 'something' howMany: 1)
		equals: 'something'.