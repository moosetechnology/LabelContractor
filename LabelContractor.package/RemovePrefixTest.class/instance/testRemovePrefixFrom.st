tests
testRemovePrefixFrom

	self assert: (aContractor removePrefix: 'An' from: exampleString) equals: 'ExampleOfAClass.txt' .
	self assert: (aContractor removePrefix: 'An' from: '') equals: ''.
	self assert: (aContractor removePrefix: '' from: exampleString ) equals: exampleString .
	self assert: (aContractor removePrefix: 'Other' from: exampleString) equals: exampleString 