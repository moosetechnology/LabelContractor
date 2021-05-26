convenience
removeNamesAt:  aCollection

	self addStrategy: (LbCRemoveNamesAtIndexesStrategy new namesAt: aCollection)