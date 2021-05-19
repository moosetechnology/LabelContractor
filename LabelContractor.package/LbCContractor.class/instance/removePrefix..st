convenience
removePrefix: aPrefix

	self addStrategy: (LbCRemovePrefixStrategy new with: aPrefix)