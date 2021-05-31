tests
testReduceWithoutCombiningStrategies

	| contractWithRemoveVowels contractWithRemovePrefix |
	contractWithRemoveVowels := contractor strategy: LbCRemoveVowelsStrategy new.
	self
		assert: (contractWithRemoveVowels reduce: stringExample)
		equals: 'smthngVrLng'.

	contractWithRemovePrefix := contractor strategy:
		                            (LbCRemovePrefixStrategy new with: 'something').
	self
		assert: (contractWithRemovePrefix reduce: stringExample)
		equals: 'VeryLong'