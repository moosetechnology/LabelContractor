reduce-label
privateReduce: aString extension: anotherString
	
	 ^ (self privateRemoveSubstring: (self substring) from: aString), anotherString 