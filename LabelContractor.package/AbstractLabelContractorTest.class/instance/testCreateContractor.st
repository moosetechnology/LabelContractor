tests
testCreateContractor

	| concreteContractor |
	concreteContractor := LabelContractor with: self classToTest.
	self assert: concreteContractor class equals: self classToTest 