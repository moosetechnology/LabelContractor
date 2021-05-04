reduce-label
privateReduce: aString extension: extensionAsString

	   "
			Take the first letters of the string(by default we take the 8 first letters).
			If the suffix of the string represents an extension ('.txt', '.st', ...), then we keep it
			
			Exemples:
				>>> (PickFirstLetters upTo: 4) reduce: 'AClassName.txt'
				returns: 'AClass.txt'
				>>> (PickFirstLetters upTo: 4) reduce: 'AClassName'
				returns: 'AClass..'
				>>> (PickFirstLetters upTo: 5) reduce: 'short'
				returns: 'short'
				>>> (PickFirstLetters upTo: 6) reduce: 'short'
				returns: 'short'
		"

	   ^ self upTo >= aString size
		     ifTrue: [ aString ] "string smaller than the chosen size"
		     ifFalse: [ 
			     | pickFirstLetters |
			     pickFirstLetters := aString copyFrom: 1 to: self upTo.
			     extensionAsString isEmpty
				     ifTrue: [ pickFirstLetters , '..' ]
				     ifFalse: [ pickFirstLetters , extensionAsString ] ]