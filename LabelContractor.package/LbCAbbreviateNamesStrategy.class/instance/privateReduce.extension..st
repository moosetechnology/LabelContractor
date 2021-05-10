reduce-label
privateReduce: aString extension: anotherString
	
	 ^ (self abbreviate: aString until: self until), anotherString  