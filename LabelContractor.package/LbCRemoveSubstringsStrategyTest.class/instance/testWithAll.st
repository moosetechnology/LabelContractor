tests
testWithAll

	| contractorWithSubstring |
	
	contractorWithSubstring := self classToTest new withAll: 'aSubstring'.
	self assert: contractorWithSubstring collectionOfSubstrings equals: { 'aSubstring' }.
	
	contractorWithSubstring := self classToTest new withAll: collectionOfSubstrings.
	self assert: contractorWithSubstring collectionOfSubstrings equals: collectionOfSubstrings 