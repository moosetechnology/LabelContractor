tests
testRemoveSubstringsFrom

	self assert: ((self classToTest with: 'An') removeSubstringsFrom: exampleString) equals: 'ExampleOfAClass.txt' .
	self assert: ((self classToTest with: '&?;') removeSubstringsFrom: exampleString) equals: exampleString .
	
	
	self assert: ((self classToTest withAll: {'An'. 'AnExamp'} ) removeSubstringsFrom: exampleString) equals: 'ExampleOfAClass.txt' .
	self assert: ((self classToTest withAll: {'An'. 'Of'}) removeSubstringsFrom: exampleString) equals: 'ExampleOfAClass.txt' .