tests
testReduceWhenRemovingWords

	| strategy |
	strategy := self classToTest new wordsAt: #(1 2 5) .
	self assert: (strategy reduce: 'LbCRemovePrefixStrategyTest') equals: 'RemovePrefixTest' 