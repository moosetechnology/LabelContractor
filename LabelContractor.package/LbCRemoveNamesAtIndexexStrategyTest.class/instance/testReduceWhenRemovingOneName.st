tests
testReduceWhenRemovingOneName

	| strategy |
	strategy := self classToTest new namesAt: 5.
	self assert: (strategy reduce: 'LbCRemovePrefixStrategyTest') equals: 'LbCRemovePrefixTest' 