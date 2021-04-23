tests
testRemoveSubstringFrom

	| labelAfter |
	
	labelAfter := labelContractorStrategy removeAnySubstring: 'Of' from: exampleString.
	self assert: labelAfter equals: 'AnExampleAClass.txt'.

