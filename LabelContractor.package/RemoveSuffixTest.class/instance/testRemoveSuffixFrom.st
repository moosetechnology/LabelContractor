tests
testRemoveSuffixFrom

	self assert: (aContractor removeSuffix: '.txt' from: exampleString) equals: 'AnExampleOfAClass' .
	self assert: (aContractor removeSuffix: '.txt' from: '') equals: ''.
	self assert: (aContractor removeSuffix: '' from: exampleString ) equals: exampleString .
	self assert: (aContractor removeSuffix: 'é"' from: exampleString) equals: exampleString 