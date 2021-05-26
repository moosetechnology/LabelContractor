convenience
substitute: anOldSubstring by: aNewSubstring

	self addStrategy: (LbCSubstituteSubstringsStrategy new
			 oldSubstring: anOldSubstring
			 newSubstring: aNewSubstring)