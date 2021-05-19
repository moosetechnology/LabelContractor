convenience
removeSubstrings: aCollectionOfSubstring

	self addStrategy:
		(LbCRemoveAnySubstringStrategy new withAll: aCollectionOfSubstring )