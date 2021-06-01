Class {
	#name : #LbCRemoveWordsAtStrategyTest,
	#superclass : #LbCAbstractStrategyTest,
	#category : #'LabelContractor-Tests'
}

{ #category : #testing }
LbCRemoveWordsAtStrategyTest class >> isAbstract [ 

	^ self == LbCRemoveWordsAtStrategyTest 
]

{ #category : #creation }
LbCRemoveWordsAtStrategyTest >> classToTest [
	
	^ LbCRemoveWordsAtStrategy 
]

{ #category : #'expected-result' }
LbCRemoveWordsAtStrategyTest >> expectedResultWhenRemoveWordsFrom [

	^ self subclassResponsibility 
]

{ #category : #tests }
LbCRemoveWordsAtStrategyTest >> testRemoveWordsFrom [ 

	| arrayOfSubstrings |
	arrayOfSubstrings := { 'A' . 'Very' . 'Simple' . 'Example' }.
	self assert: (aContractor removeWordsFrom: arrayOfSubstrings) equals: self expectedResultWhenRemoveWordsFrom
]
