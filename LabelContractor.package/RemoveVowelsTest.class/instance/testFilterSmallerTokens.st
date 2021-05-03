tests
testFilterSmallerTokens
		
		self
		   assert: (aContractor filterSmallerTokens: OrderedCollection new)
		   equals: OrderedCollection new .
		
	   self
		   assert: (aContractor filterSmallerTokens: #( 'Of' 'Some' 'In' ) asOrderedCollection)
		   equals: #( 'Some' ) asOrderedCollection.
		
		self
		   assert: (aContractor filterSmallerTokens: #( 'Of' 'In' ) asOrderedCollection)
		   equals: OrderedCollection new .