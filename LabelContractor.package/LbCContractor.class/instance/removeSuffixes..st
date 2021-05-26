convenience
removeSuffixes: aCollectionOfSuffix

	self addStrategy: (LbCRemoveSuffixStrategy new withAll: aCollectionOfSuffix)