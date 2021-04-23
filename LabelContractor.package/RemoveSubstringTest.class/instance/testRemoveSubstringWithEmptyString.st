tests
testRemoveSubstringWithEmptyString

	| labelBefore labelAfter |
	labelBefore := ''.
	labelAfter := labelContractorStrategy
		              removeSubstring: 'sub'
		              from: labelBefore.
	self assert: labelAfter equals: ''