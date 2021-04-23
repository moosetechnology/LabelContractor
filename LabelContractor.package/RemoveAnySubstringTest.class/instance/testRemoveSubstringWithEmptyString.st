tests
testRemoveSubstringWithEmptyString

	| labelAfter |

	labelAfter := labelContractorStrategy removeSubstring: 'sub' from: ''.
	self assert: labelAfter equals: ''