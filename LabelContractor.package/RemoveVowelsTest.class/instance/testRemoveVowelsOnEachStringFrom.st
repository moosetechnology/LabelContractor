tests
testRemoveVowelsOnEachStringFrom
	
	| aCollectionOfString |
	aCollectionOfString := #('Something' 'Of' 'Other') asOrderedCollection .
	self assert: (aContractor removeVowelsOnEachStringFrom: aCollectionOfString) equals: #('Smthng' 'Othr') asOrderedCollection 