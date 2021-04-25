tests
testRemoveSubstringFrom

	| labelAfter |
	
	" With type String case "
	labelAfter := aContractor removeAnySubstring: 'Of' from: exampleString.
	self assert: labelAfter equals: 'AnExampleAClass.txt'.
	
	labelAfter := aContractor removeAnySubstring: 'Of' from:'somethingOfOtherOfSomething'.
	self assert: labelAfter equals: 'somethingOtherSomething'.
	
	" With type Character case "
	labelAfter := aContractor removeAnySubstring: $a from: exampleString.
	self assert: labelAfter equals: 'AnExmpleOfAClss.txt'  

