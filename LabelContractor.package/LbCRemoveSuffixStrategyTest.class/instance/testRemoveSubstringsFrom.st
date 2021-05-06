tests
testRemoveSubstringsFrom

	self
		assert: ((self classToTest new with: '.txt') removeSubstringsFrom: exampleString) 
		equals: 'AnExampleOfAClass'.
	
	self
		assert: ((self classToTest new with: '&?;') removeSubstringsFrom: exampleString)
		equals: exampleString.

	self
		assert: (self classToTest new withAll: { '.txt'. 'Class' };
		               removeSubstringsFrom: exampleString)
		equals: 'AnExampleOfAClass'.

	self
		assert: (self classToTest new withAll: { 'An'. 'Class.txt'. 'txt' };
		               removeSubstringsFrom: exampleString)
		equals: 'AnExampleOfA'