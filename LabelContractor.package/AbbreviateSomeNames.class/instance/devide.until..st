splitjoin
devide: aCollection until: aNumber

	   | firstPartTokens secondPartTokens |
	   aCollection size > aNumber ifTrue: [ 
		   firstPartTokens := aCollection copyFrom: 1 to: aNumber.
		   secondPartTokens := aCollection asOrderedCollection
			                       removeAllFoundIn: firstPartTokens;
			                       yourself.
		   ^ Array with: firstPartTokens with: secondPartTokens asArray ].
	   ^ aCollection