private-algorithm
divideByWord: aString

	   "
			divideByWord: '23SomethingHer43Like33' 
				-> {'23'. 'Something'. 'Her43'. 'Like33'}
			divideByWord: '23SomethingHer43Like33Other' 
				-> {'23'. 'Something'. 'Her43'. 'Like33'. 'Other'}	
			divideByWord: 'DFSSomething'	 
				-> { 'DFS'. 'Something' }
			divideByWord: 'DFSomethingCLKMorning' 
				-> { 'DF'. 'Something'. 'CLK'. 'Morning' }
			divideByWord: '32DF' 
				->  { '32'. 'DF' }
	   "

	   | divided consecutiveUpperCase indexCapitalLetter beginWord |
	   divided := OrderedCollection new.
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
								   divided add:
									   (aString copyFrom: indexCapitalLetter to: each - 1) ] ] ]
					   ifFalse: [ indexCapitalLetter := each ].
				   each = aString size ifTrue: [ 
					   divided add: (aString copyFrom: indexCapitalLetter to: each) ] ]
			   ifFalse: [ 
				   each + 1 <= aString size
					   ifTrue: [ 
						   (aString at: each + 1) isUppercase ifTrue: [ 
							   divided add: (aString copyFrom: beginWord to: each) ] ]
					   ifFalse: [ 
					   divided add: (aString copyFrom: beginWord to: each) ].
				   consecutiveUpperCase := 0 ] ].
	   ^ divided