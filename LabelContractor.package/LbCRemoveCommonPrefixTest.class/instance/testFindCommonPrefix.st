tests
testFindCommonPrefix
	
	self assert: removeCommonPrefix findCommonPrefix equals: 'LbC'.
	
	removeCommonPrefix addAStringToCollection: 'SomethingDiffrent'.
	self assert: removeCommonPrefix findCommonPrefix equals: ''
	