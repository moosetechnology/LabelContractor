tests
testRemoveSubstringsFrom

	self assert: ((self classToTest with: '.txt') removeSubstringsFrom: exampleString) equals: 'AnExampleOfAClass' .
	self assert: ((self classToTest with: '&?;' ) removeSubstringsFrom: exampleString) equals: exampleString .
	
	self assert: ((self classToTest withAll: {'.txt'. 'Class'}) removeSubstringsFrom: exampleString) equals: 'AnExampleOfAClass' .
	self assert: ((self classToTest withAll: {'An'. '.txt'}) removeSubstringsFrom: exampleString) equals: 'AnExampleOfAClass' .