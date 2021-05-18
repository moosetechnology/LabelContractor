tests
testReduceWithoutCombiningStrategies
	
	| contractWithRemoveVowels |
	contractWithRemoveVowels := contractor strategy:LbCRemoveVowelsStrategy new.
	self assert: (contractWithRemoveVowels reduce: stringExample) equals: 'smthngVrLng'