tests
testDivideByWord

	   self
		   assert: (aContractor divideByWord: 'DMClassNameBlueprint34')
		   equals: #( 'DM' 'Class' 'Name' 'Blueprint34' ) asOrderedCollection.

	   self
		   assert: (aContractor divideByWord: '23SomethingOf43Like33')
		   equals: #( '23' 'Something' 'Of43' 'Like33' ) asOrderedCollection.

	   self
		   assert: (aContractor divideByWord: '32DF')
		   equals: #( '32' 'DF' ) asOrderedCollection.

	   self
		   assert: (aContractor divideByWord: 'CK123J')
		   equals: #( 'C' 'K123' 'J' ) asOrderedCollection