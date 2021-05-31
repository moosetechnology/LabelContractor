Class {
	#name : #LbCRemoveWordsAtStrategyTest,
	#superclass : #LbCAbstractStrategyTest,
	#category : 'LabelContractor-Tests'
}

{ #category : #creation }
LbCRemoveWordsAtStrategyTest >> classToTest [
	
	^ LbCRemoveWordsAtStrategy 
]

{ #category : #tests }
LbCRemoveWordsAtStrategyTest >> testReduceWhenRemovingOneWord [

	| strategy |
	strategy := self classToTest new wordAt: 5.
	self assert: (strategy reduce: 'LbCRemovePrefixStrategyTest') equals: 'LbCRemovePrefixTest' 
]

{ #category : #tests }
LbCRemoveWordsAtStrategyTest >> testReduceWhenRemovingWords [

	| strategy |
	strategy := self classToTest new wordsAt: #(1 2 5) .
	self assert: (strategy reduce: 'LbCRemovePrefixStrategyTest') equals: 'RemovePrefixTest' 
]

{ #category : #tests }
LbCRemoveWordsAtStrategyTest >> testkeepIndexesThatAreInTheBoundOf [

	| strategy |
	strategy := self classToTest new wordsAt: #() .
	self assert: (strategy keepIndexesThatAreInTheBoundOf: 5) equals: #() asSortedCollection .
	
	strategy := self classToTest new wordsAt: #(1 2 10) .
	self assert: (strategy keepIndexesThatAreInTheBoundOf: 5) equals: #(1 2) asSortedCollection.
	
	strategy := self classToTest new wordsAt: #(10 20) .
	self assert: (strategy keepIndexesThatAreInTheBoundOf: 5) equals: #() asSortedCollection 
]
