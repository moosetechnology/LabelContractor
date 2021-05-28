convenience
removeWordsAt:  aCollection

	self addStrategy: (LbCRemoveWordsAtStrategy new wordsAt: aCollection)