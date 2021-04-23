tests
testRemoveSubstringWithEmptyString

	| labelAfter |

	labelAfter := labelContractorStrategy removeAnySubstring: 'sub' from: ''.
	self assert: labelAfter equals: ''