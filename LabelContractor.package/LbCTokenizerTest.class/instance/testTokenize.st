tests
testTokenize

	   self
		   assert: (tokenizer tokenize: 'DMClassNameBlueprint34')
		   equals: #( 'DM' 'Class' 'Name' 'Blueprint34' ) asOrderedCollection.

	   self
		   assert: (tokenizer tokenize: '23SomethingOf43Like33')
		   equals: #( '23' 'Something' 'Of43' 'Like33' ) asOrderedCollection.

	   self
		   assert: (tokenizer tokenize: '32DF')
		   equals: #( '32' 'DF' ) asOrderedCollection.

	   self
		   assert: (tokenizer tokenize: 'CK123J')
		   equals: #( 'C' 'K123' 'J' ) asOrderedCollection