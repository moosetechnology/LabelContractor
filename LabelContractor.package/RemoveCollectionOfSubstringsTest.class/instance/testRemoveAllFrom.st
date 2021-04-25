tests
testRemoveAllFrom
	
	self assert: (aContractor removeAll: #('thing') from: '') equals: ''.
	self assert: (aContractor removeAll: #('An' 'Of') from: 'AnExampleOfClass') equals: 'ExampleClass'.
	self assert: (aContractor removeAll: #('œé' 'Of') from: 'AnExampleOfClass') equals: 'AnExampleClass'.
	self assert: (aContractor removeAll: 'Of' from: 'AnExampleOfClass') equals: 'AnExampleClass'.