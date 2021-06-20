Class {
	#name : #LbCRemoveAnyWordsStrategyTest,
	#superclass : #LbCRemoveWordsAtStrategyTest,
	#category : #'LabelContractor-Tests'
}

{ #category : #creation }
LbCRemoveAnyWordsStrategyTest >> classToTest [
	
	^ LbCRemoveAnyWordsAtStrategy  
]

{ #category : #'expected-result' }
LbCRemoveAnyWordsStrategyTest >> expectedResultWhenRemoveWordsFrom [

	^ { 'A' . 'Example' }
]

{ #category : #tests }
LbCRemoveAnyWordsStrategyTest >> testReduceWhenRemovingOneWord [

	| strategy |
	strategy := self classToTest new wordAt: 5.
	self assert: (strategy reduce: 'LbCRemovePrefixStrategyTest') equals: 'LbCRemovePrefixTest' 
]

{ #category : #tests }
LbCRemoveAnyWordsStrategyTest >> testReduceWhenRemovingWords [

	| strategy |
	strategy := self classToTest new wordsAt: #(1 2 5) .
	self assert: (strategy reduce: 'LbCRemovePrefixStrategyTest') equals: 'RemovePrefixTest' 
]

{ #category : #tests }
LbCRemoveAnyWordsStrategyTest >> testRemoveWordsFrom [ 

	| arrayOfSubstrings |
	arrayOfSubstrings := { 'A' . 'Very' . 'Simple' . 'Example' }.
	aContractor wordsAt: { 2 . 3 }.
	self assert: (aContractor removeWordsFrom: arrayOfSubstrings) equals: self expectedResultWhenRemoveWordsFrom
]

{ #category : #tests }
LbCRemoveAnyWordsStrategyTest >> testkeepIndexesThatAreInTheBoundOf [

	| strategy |
	strategy := self classToTest new wordsAt: #() .
	self assert: (strategy keepIndexesThatAreInTheBoundOf: 5) equals: #() asSortedCollection .
	
	strategy := self classToTest new wordsAt: #(1 2 10) .
	self assert: (strategy keepIndexesThatAreInTheBoundOf: 5) equals: #(1 2) asSortedCollection.
	
	strategy := self classToTest new wordsAt: #(10 20) .
	self assert: (strategy keepIndexesThatAreInTheBoundOf: 5) equals: #() asSortedCollection 
]
