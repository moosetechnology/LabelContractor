Class {
	#name : #LbCPickFirstCharactersStrategyTest,
	#superclass : #LbCReduceUpToStrategyTest,
	#category : 'LabelContractor-Tests'
}

{ #category : #creation }
LbCPickFirstCharactersStrategyTest >> classToTest [
	
	^ LbCPickFirstCharactersStrategy
]

{ #category : #tests }
LbCPickFirstCharactersStrategyTest >> testPickFirstCharacters [
	"By default, the number of letters taken is 8"

	| stringExample |
	self assert: (aContractor reduce: '') equals: ''.

	stringExample := 'AnExampleOfClass'.
	self assert: (aContractor reduce: stringExample) equals: 'AnExampl..'
]

{ #category : #tests }
LbCPickFirstCharactersStrategyTest >> testPickFirstCharactersShortString [

	self assert: (aContractor reduce: 'Short') equals: 'Short'
]
