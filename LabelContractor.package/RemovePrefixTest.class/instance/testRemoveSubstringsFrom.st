tests
testRemoveSubstringsFrom

	self
		assert: ((self classToTest with: 'An') removeSubstringsFrom: exampleString)
		equals: 'ExampleOfAClass.txt'.
	
	self
		assert: ((self classToTest with: '&?;') removeSubstringsFrom: exampleString)
		equals: exampleString.

	self
		assert: ((self classToTest withAll: { 'An'. 'AnExample' }) removeSubstringsFrom: exampleString)
		equals: 'OfAClass.txt'.
	
	self
		assert: ((self classToTest withAll: { 'AnExample'. 'ok'. 'An' }) removeSubstringsFrom: exampleString)
		equals: 'OfAClass.txt'