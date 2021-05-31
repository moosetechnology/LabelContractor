tests
testFindCommonPrefix
	
	self assert: commonPrefixFinder findCommonPrefix equals: 'LbC'.
	
	"add something really different"
	commonPrefixFinder addAStringToCollection: 'SomethingDiffrent'.
	self assert: commonPrefixFinder findCommonPrefix equals: ''
	