Class {
	#name : #LbCRemoveSubstringsStrategyTest,
	#superclass : #LbCAbstractStrategyTest,
	#instVars : [
		'collectionOfSubstrings'
	],
	#category : 'LabelContractor-Tests'
}

{ #category : #testing }
LbCRemoveSubstringsStrategyTest class >> isAbstract [ 

	^ self == LbCRemoveSubstringsStrategyTest 
]

{ #category : #'expected-result' }
LbCRemoveSubstringsStrategyTest >> expectedReducedLabelCaseSensitive [

	^ self subclassResponsibility 
]

{ #category : #'expected-result' }
LbCRemoveSubstringsStrategyTest >> expectedReducedLabelCaseUnsensitive [

	^ self subclassResponsibility 
]

{ #category : #running }
LbCRemoveSubstringsStrategyTest >> setUp [ 

	super setUp.
	collectionOfSubstrings := #('An' 'Of' 'Class').
	aContractor withAll: collectionOfSubstrings 
	
]

{ #category : #'tests - empty' }
LbCRemoveSubstringsStrategyTest >> testEmptyCollection [

	| labelAfter |

	labelAfter := (self classToTest new with: '') reduce: exampleString.
	self assert: labelAfter equals: exampleString.
	
	labelAfter := (self classToTest new withAll: {}) reduce: exampleString.
	self assert: labelAfter equals: exampleString
]

{ #category : #tests }
LbCRemoveSubstringsStrategyTest >> testRemoveCaseSensitive [

	self
		assert: (aContractor beCaseSensitive;  reduce: 'anExampleOfAClAss')
		equals: self expectedReducedLabelCaseSensitive
]

{ #category : #tests }
LbCRemoveSubstringsStrategyTest >> testRemoveCaseUnsensitive [

	self
		assert: (aContractor reduce: 'AnExampleofAClAss')
		equals: self expectedReducedLabelCaseUnsensitive
]

{ #category : #tests }
LbCRemoveSubstringsStrategyTest >> testRemoveSubstringsFrom [
	^ self subclassResponsibility
]

{ #category : #'tests - empty' }
LbCRemoveSubstringsStrategyTest >> testRemoveSubstringsFromEmptyString [

	| labelAfter |

	labelAfter := aContractor reduce: ''.
	self assert: labelAfter equals: ''
]

{ #category : #tests }
LbCRemoveSubstringsStrategyTest >> testWithAll [

	| contractorWithSubstring |
	
	contractorWithSubstring := self classToTest new withAll: 'aSubstring'.
	self assert: contractorWithSubstring collectionOfSubstrings equals: { 'aSubstring' }.
	
	contractorWithSubstring := self classToTest new withAll: collectionOfSubstrings.
	self assert: contractorWithSubstring collectionOfSubstrings equals: collectionOfSubstrings 
]
