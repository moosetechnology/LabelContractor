private-algorithm
filterSmallerWords: aCollectionOfWords
		
		" 
			self filterSmallerWords: ( #('Of' 'Some' 'In') asOrderedCollection )
			-> #('Some') asOrderedCollection 	
		"
	   ^ aCollectionOfWords removeAllSuchThat: [ :each | self tokenLessThanTwoLetters: each ].