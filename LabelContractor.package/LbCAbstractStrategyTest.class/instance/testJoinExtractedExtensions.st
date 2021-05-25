tests
testJoinExtractedExtensions
	
	self assert: (LbCAbstractStrategy joinExtractedExtensions: OrderedCollection empty) equals: ''.
	self assert: (LbCAbstractStrategy joinExtractedExtensions: #('tar') asOrderedCollection) equals: '.tar'.
	self assert: (LbCAbstractStrategy joinExtractedExtensions: #('tar' 'gz') asOrderedCollection) equals: '.tar.gz'.
	
