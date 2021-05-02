tests
testTokenizeWords

	   self
		   assert: (aContractor tokenizeWords: 'DMClassNameBlueprint34')
		   equals: #( 'DM' 'Class' 'Name' 'Blueprint34' ) asOrderedCollection.

	   self
		   assert: (aContractor tokenizeWords: '23SomethingOf43Like33')
		   equals: #( '23' 'Something' 'Of43' 'Like33' ) asOrderedCollection.

	   self
		   assert: (aContractor tokenizeWords: '32DF')
		   equals: #( '32' 'DF' ) asOrderedCollection.

	   self
		   assert: (aContractor tokenizeWords: 'CK123J')
		   equals: #( 'C' 'K123' 'J' ) asOrderedCollection