tests
testWithAll

	| contractorWithSubstring |
	
	contractorWithSubstring := self classToTest withAll: 'aSubstring'.
	self assert: contractorWithSubstring collectionOfSubstrings equals: { 'aSubstring' }.
	
	contractorWithSubstring := self classToTest withAll: collectionOfSubstrings.
	self assert: contractorWithSubstring collectionOfSubstrings equals: collectionOfSubstrings 