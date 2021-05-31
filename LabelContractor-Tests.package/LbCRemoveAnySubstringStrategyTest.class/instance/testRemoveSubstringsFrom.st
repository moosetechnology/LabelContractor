tests
testRemoveSubstringsFrom

	   self
		   assert: ((self classToTest new with: 'Of') removeSubstringsFrom: 'exampleOfSomeOfThings')
		   equals: 'exampleSomeThings'.

	   self
		   assert: ((self classToTest new with: '&?;') removeSubstringsFrom: 'example')
		   equals: 'example'.

	   self
		   assert: ((self classToTest new withAll: { 'An'. 'Exam' }) 
				    		removeSubstringsFrom: 'AnExampleOfExamination')
		   equals: 'pleOfination'.
