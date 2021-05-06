tests
testRemoveSubstringsFrom

	   self
		   assert: ((self classToTest with: 'Of') removeSubstringsFrom: 'exampleOfSomeOfThings')
		   equals: 'exampleSomeThings'.

	   self
		   assert: ((self classToTest with: '&?;') removeSubstringsFrom: 'example')
		   equals: 'example'.

	   self
		   assert: ((self classToTest withAll: { 'An'. 'Exam' }) 
				    		removeSubstringsFrom: 'AnExampleOfExamination')
		   equals: 'pleOfination'.
