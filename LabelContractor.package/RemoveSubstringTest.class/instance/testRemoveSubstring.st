tests
testRemoveSubstring

	| labelBefore labelAfter |
	labelBefore := 'AnExampleOfClass'.
	labelAfter := labelContractorStrategy removeSubstring: 'An'  from: labelBefore  .
	self assert: labelAfter equals: 'ExampleOfClass'.
	
	labelAfter := labelContractorStrategy removeSubstring: 'Of'  from: labelBefore  .
	self assert: labelAfter equals: 'AnExampleClass' 
	