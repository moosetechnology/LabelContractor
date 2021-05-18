private-algorithm
tokenize: aString

	   "
			tokenizeWords: '23SomethingHer43Like33' 
				-> {'23'. 'Something'. 'Her43'. 'Like33'}
			tokenizeWords: '23SomethingHer43Like33Other' 
				-> {'23'. 'Something'. 'Her43'. 'Like33'. 'Other'}	
			tokenizeWords: 'DFSSomething'	 
				-> { 'DFS'. 'Something' }
			tokenizeWords: 'DFSomethingCLKMorning' 
				-> { 'DF'. 'Something'. 'CLK'. 'Morning' }
			tokenizeWords: '32DF' 
				->  { '32'. 'DF' }
	   "

	   | tokenizedString consecutiveUpperCase indexCapitalLetter beginWord |
	   tokenizedString := OrderedCollection new.
	   consecutiveUpperCase := 0.
	   beginWord := 1.
	   indexCapitalLetter := 1.
	   1 to: aString size do: [ :each | 
		   (aString at: each) isUppercase
			   ifTrue: [ 
				   consecutiveUpperCase := consecutiveUpperCase + 1.
				   beginWord := each.
				   consecutiveUpperCase > 1
					   ifTrue: [ 
						   each + 1 < aString size ifTrue: [ 
							   (aString at: each + 1) isUppercase ifFalse: [ 
								   tokenizedString add:
									   (aString copyFrom: indexCapitalLetter to: each - 1) ] ] ]
					   ifFalse: [ indexCapitalLetter := each ].
				   each = aString size ifTrue: [ 
					   tokenizedString add: (aString copyFrom: indexCapitalLetter to: each) ] ]
			   ifFalse: [ 
				   each + 1 <= aString size
					   ifTrue: [ 
						   (aString at: each + 1) isUppercase ifTrue: [ 
							   tokenizedString add: (aString copyFrom: beginWord to: each) ] ]
					   ifFalse: [ 
					   tokenizedString add: (aString copyFrom: beginWord to: each) ].
				   consecutiveUpperCase := 0 ] ].
	   ^ tokenizedString