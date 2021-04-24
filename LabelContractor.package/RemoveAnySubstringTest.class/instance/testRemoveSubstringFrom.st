tests
testRemoveSubstringFrom

	| labelAfter |
	
	labelAfter := aContractor removeAnySubstring: 'Of' from: exampleString.
	self assert: labelAfter equals: 'AnExampleAClass.txt'.

