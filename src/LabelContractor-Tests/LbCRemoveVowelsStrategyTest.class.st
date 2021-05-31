Class {
	#name : #LbCRemoveVowelsStrategyTest,
	#superclass : #LbCAbstractStrategyTest,
	#category : 'LabelContractor-Tests'
}

{ #category : #creation }
LbCRemoveVowelsStrategyTest >> classToTest [
	
	^ LbCRemoveVowelsStrategy
]

{ #category : #tests }
LbCRemoveVowelsStrategyTest >> testReduceMoreExamples [

	self assert: (aContractor reduce: 'SequenceableCollection') equals: 'SqncblCllctn'.
	self assert: (aContractor reduce: 'WideSymbol') equals: 'WdSmbl'.
]

{ #category : #tests }
LbCRemoveVowelsStrategyTest >> testRemoveVowelsFrom [

	   self
		   assert: (aContractor removeVowelsFrom: 'Something')
		   equals: 'Smthng'.
	   self
		   assert: (aContractor removeVowelsFrom: 'Example')
		   equals: 'Exmpl'
]

{ #category : #tests }
LbCRemoveVowelsStrategyTest >> testRemoveVowelsOnEachStringFrom [
	
	| aCollectionOfString |
	aCollectionOfString := #('Something' 'Of' 'Other') asOrderedCollection .
	self assert: (aContractor removeVowelsOnEachStringFrom: aCollectionOfString) 
			equals: #('Smthng' 'Of' 'Othr') asOrderedCollection 
]
