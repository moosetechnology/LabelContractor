reduce-label
privateReduce: aString extension: extensionAsString

	" Take the first letters of the string(by default i take the 8 first letters). If the suffix of the string represents an extension of a file (eg:'.txt', '.st' ...), then i keep it"

	^ self upTo >= aString size
		  ifTrue: [ "string smaller than the chosen size" aString ]
		  ifFalse: [ 
			  | pickFirstLetters |
			  pickFirstLetters := aString copyFrom: 1 to: self upTo.
			  extensionAsString isEmpty
				  ifTrue: [ pickFirstLetters , '..' ]
				  ifFalse: [ pickFirstLetters , extensionAsString ] ]