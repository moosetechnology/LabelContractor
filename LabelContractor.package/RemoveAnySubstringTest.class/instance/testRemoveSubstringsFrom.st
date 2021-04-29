tests
testRemoveSubstringsFrom

	self assert: ((self classToTest with: 'A') removeSubstringsFrom: exampleString) equals: 'nExmpleOfClss.txt' .
	self assert: ((self classToTest with: '&?;') removeSubstringsFrom: exampleString) equals: exampleString .
	
	self assert: ((self classToTest withAll: {'An'. 'Exam'. $f}) removeSubstringsFrom: exampleString) equals: 'pleOAClass.txt' .
	self assert: ((self classToTest withAll: {'An'. 'Exam'. 'of'}) removeSubstringsFrom: exampleString) equals: 'pleAClass.txt' .