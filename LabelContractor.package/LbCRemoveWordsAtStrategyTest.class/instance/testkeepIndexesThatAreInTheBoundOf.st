tests
testkeepIndexesThatAreInTheBoundOf

	| strategy |
	strategy := self classToTest new wordsAt: #() .
	self assert: (strategy keepIndexesThatAreInTheBoundOf: 5) equals: #() asSortedCollection .
	
	strategy := self classToTest new wordsAt: #(1 2 10) .
	self assert: (strategy keepIndexesThatAreInTheBoundOf: 5) equals: #(1 2) asSortedCollection.
	
	strategy := self classToTest new wordsAt: #(10 20) .
	self assert: (strategy keepIndexesThatAreInTheBoundOf: 5) equals: #() asSortedCollection 