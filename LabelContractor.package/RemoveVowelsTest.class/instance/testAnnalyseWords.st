tests
testAnnalyseWords
	
	| aCollectionOfString |
	aCollectionOfString := #('Something' 'Of' 'Other') asOrderedCollection .
	self assert: (aContractor annalyseWords: aCollectionOfString) equals: #('Smthng' 'Othr') 