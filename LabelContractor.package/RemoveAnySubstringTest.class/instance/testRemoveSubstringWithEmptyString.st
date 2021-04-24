tests
testRemoveSubstringWithEmptyString

	| labelAfter |

	labelAfter := aContractor removeAnySubstring: 'sub' from: ''.
	self assert: labelAfter equals: ''