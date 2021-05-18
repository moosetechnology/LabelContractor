tests
testAddStrategy

	| strategy1 strategy2 |
	strategy1 := LbCEllipsisStrategy new.
	strategy2 := LbCRemovePrefixStrategy new.
	
	contractor addStrategy: strategy1.
	self assert: contractor collectionOfStrategy 
			equals: { strategy1 } asOrderedCollection.
	
	contractor addStrategy: strategy2.
	self assert: contractor collectionOfStrategy 
			equals: { strategy1. strategy2 } asOrderedCollection