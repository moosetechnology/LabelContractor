tests
testRemoveExtensionFrom

	self
		assert: (LbCAbstractStrategy removeExtension: '' from: '')
		equals: String empty.

	self
		assert: (LbCAbstractStrategy removeExtension: 'txt' from: 'something')
		equals: 'something'.

	self
		assert: (LbCAbstractStrategy removeExtension: 'txt' from: 'something.txt')
		equals: 'something'.

	self
		assert: (LbCAbstractStrategy removeExtension: 'gz' from: 'something.tar.gz')
		equals: 'something.tar'.
	self
		assert: (LbCAbstractStrategy removeExtension: 'tar' from: 'something.tar.gz')
		equals: 'something.tar.gz'