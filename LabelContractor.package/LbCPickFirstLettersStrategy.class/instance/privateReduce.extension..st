reduce-label
privateReduce: aString extension: extensionAsString

	   "
			Take the first letters of the string(by default we take the 8 first letters).
			If the suffix of the string represents an extension ('.txt', '.st', ...), then we keep it
			
			Exemples:
				
				```Smalltalk
				LbCContractor new 
					strategy: (LbCPickFirstLettersStrategy upTo: 4); 
					reduce: 'AClassName.txt'.
				```	
				-> 'ACla.txt'
				
				```Smalltalk
				LbCContractor new 
					strategy: (LbCPickFirstLettersStrategy upTo: 4); 
					reduce: 'AClassName' 
				```	
				-> 'AClas..'
				
				```Smalltalk
				LbCContractor new 
					strategy: (LbCPickFirstLettersStrategy upTo: 5); 
					reduce: 'AClassName' 
				```	 
				-> 'short' 
		"

	   ^ self upTo >= aString size
		     ifTrue: [ aString ] "string smaller than the chosen size"
		     ifFalse: [ 
			     | pickFirstLetters |
			     pickFirstLetters := aString copyFrom: 1 to: self upTo.
			     extensionAsString isEmpty
				     ifTrue: [ pickFirstLetters , '..' ]
				     ifFalse: [ pickFirstLetters , extensionAsString ] ]