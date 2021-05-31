Class {
	#name : #LbCRemoveSuffixStrategyTest,
	#superclass : #LbCRemoveSubstringsStrategyTest,
	#category : 'LabelContractor-Tests'
}

{ #category : #creation }
LbCRemoveSuffixStrategyTest >> classToTest [
	
	^ LbCRemoveSuffixStrategy  
]

{ #category : #'expected-result' }
LbCRemoveSuffixStrategyTest >> expectedReducedLabelCaseSensitive [

	^ 'anExampleOfAClAss'
]

{ #category : #'expected-result' }
LbCRemoveSuffixStrategyTest >> expectedReducedLabelCaseUnsensitive [

	^ 'AnExampleofA'
]

{ #category : #tests }
LbCRemoveSuffixStrategyTest >> testRemoveSubstringsFrom [

	self
		assert: ((self classToTest new with: '.txt') removeSubstringsFrom: exampleString) 
		equals: 'AnExampleOfAClass'.
	
	self
		assert: ((self classToTest new with: '&?;') removeSubstringsFrom: exampleString)
		equals: exampleString.

	self
		assert: (self classToTest new withAll: { '.txt'. 'Class' };
		               removeSubstringsFrom: exampleString)
		equals: 'AnExampleOfAClass'.

	self
		assert: (self classToTest new withAll: { 'An'. 'Class.txt'. 'txt' };
		               removeSubstringsFrom: exampleString)
		equals: 'AnExampleOfA'
]
