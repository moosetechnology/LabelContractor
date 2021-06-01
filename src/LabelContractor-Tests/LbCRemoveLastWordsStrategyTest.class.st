Class {
	#name : #LbCRemoveLastWordsStrategyTest,
	#superclass : #LbCRemoveWordsAtStrategyTest,
	#category : #'LabelContractor-Tests'
}

{ #category : #creation }
LbCRemoveLastWordsStrategyTest >> classToTest [
	
	^ LbCRemoveLastWordStrategy  
]

{ #category : #'expected-result' }
LbCRemoveLastWordsStrategyTest >> expectedResultWhenRemoveWordsFrom [

	^ { 'A' . 'Very' . 'Simple' }
]

{ #category : #'expected-result' }
LbCRemoveLastWordsStrategyTest >> testReduce [

	self assert: (aContractor reduce: exampleString) equals: 'AnExampleOfA.txt'
]
