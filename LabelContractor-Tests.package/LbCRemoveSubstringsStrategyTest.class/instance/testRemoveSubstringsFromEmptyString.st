tests - empty
testRemoveSubstringsFromEmptyString

	| labelAfter |

	labelAfter := aContractor reduce: ''.
	self assert: labelAfter equals: ''