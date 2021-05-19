convenience
removePrefixes: aCollectionOfPrefix

	self addStrategy: (LbCRemovePrefixStrategy new withAll: aCollectionOfPrefix )