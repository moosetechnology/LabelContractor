Class {
	#name : #LbCRemovePrefixStrategyTest,
	#superclass : #LbCRemoveSubstringsStrategyTest,
	#category : 'LabelContractor-Tests'
}

{ #category : #creation }
LbCRemovePrefixStrategyTest >> classToTest [
	
	^ LbCRemovePrefixStrategy 
]

{ #category : #'expected-result' }
LbCRemovePrefixStrategyTest >> expectedReducedLabelCaseSensitive [

	^ 'anExampleOfAClAss'
]

{ #category : #'expected-result' }
LbCRemovePrefixStrategyTest >> expectedReducedLabelCaseUnsensitive [

	^ 'ExampleofAClAss'
]

{ #category : #tests }
LbCRemovePrefixStrategyTest >> testRemoveSubstringsFrom [

	self
		assert: ((self classToTest new with: 'An') removeSubstringsFrom: exampleString)
		equals: 'ExampleOfAClass.txt'.
	
	self
		assert: ((self classToTest new with: '&?;') removeSubstringsFrom: exampleString)
		equals: exampleString.

	self
		assert: ((self classToTest new withAll: { 'An'. 'AnExample' }) removeSubstringsFrom: exampleString)
		equals: 'OfAClass.txt'.
	
	self
		assert: ((self classToTest new withAll: { 'AnExample'. 'ok'. 'An' }) removeSubstringsFrom: exampleString)
		equals: 'OfAClass.txt'
]
