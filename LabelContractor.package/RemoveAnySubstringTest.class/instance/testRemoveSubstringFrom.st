tests
testRemoveSubstringFrom

	| labelAfter |
	
	labelAfter := aContractor removeAnySubstring: 'Of' from: exampleString.
	self assert: labelAfter equals: 'AnExampleAClass.txt'.
	
	labelAfter := aContractor removeAnySubstring: 'Of' from:'somethingOfOtherOfSomething'.
	self assert: labelAfter equals: 'somethingOtherSomething'.

