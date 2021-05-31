tests
testReduceWhenRemovingOneWord

	| strategy |
	strategy := self classToTest new wordAt: 5.
	self assert: (strategy reduce: 'LbCRemovePrefixStrategyTest') equals: 'LbCRemovePrefixTest' 