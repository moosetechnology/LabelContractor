convenience
removeSubstring: aSubstring

	self addStrategy:
		(LbCRemoveAnySubstringStrategy new with: aSubstring)