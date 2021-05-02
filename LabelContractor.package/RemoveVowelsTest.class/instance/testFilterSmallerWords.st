tests
testFilterSmallerWords
		
		self
		   assert: (aContractor filterSmallerWords: OrderedCollection new)
		   equals: OrderedCollection new .
		
	   self
		   assert: (aContractor filterSmallerWords: #( 'Of' 'Some' 'In' ) asOrderedCollection)
		   equals: #( 'Some' ) asOrderedCollection.
		
		self
		   assert: (aContractor filterSmallerWords: #( 'Of' 'In' ) asOrderedCollection)
		   equals: OrderedCollection new .