Class {
	#name : #LbCRemoveFirstWordsStrategyTest,
	#superclass : #LbCRemoveWordsAtStrategyTest,
	#category : #'LabelContractor-Tests'
}

{ #category : #creation }
LbCRemoveFirstWordsStrategyTest >> classToTest [
	
	^ LbCRemoveFirstWordStrategy 
]

{ #category : #'expected-result' }
LbCRemoveFirstWordsStrategyTest >> expectedResultWhenRemoveWordsFrom [

	^ { 'Very' . 'Simple' . 'Example' }
]

{ #category : #tests }
LbCRemoveFirstWordsStrategyTest >> testReduce [

	self assert: (aContractor reduce: exampleString) equals: 'ExampleOfAClass.txt'
]
