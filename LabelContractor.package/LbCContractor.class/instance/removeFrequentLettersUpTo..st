convenience
removeFrequentLettersUpTo: anInteger

	self addStrategy: (LbCRemoveFrequentLettersStrategy new upTo: anInteger) 