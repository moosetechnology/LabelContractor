Class {
	#name : #LbCAbbreviateNamesStrategyTest,
	#superclass : #LbCAbstractStrategyTest,
	#category : 'LabelContractor-Tests'
}

{ #category : #creation }
LbCAbbreviateNamesStrategyTest >> classToTest [
	
	^ LbCAbbreviateNamesStrategy  
]

{ #category : #creation }
LbCAbbreviateNamesStrategyTest >> testAbbreviateUntil [

	   self
		   assert: (aContractor
				    abbreviate: 'DMClassNamesBlueprintTestAbbreviateUntil'
				    until: 5)
		   equals: 'DCNBTAbbreviateUntil'
]

{ #category : #creation }
LbCAbbreviateNamesStrategyTest >> testDivideUntil [
	self
		assert:
			(aContractor
				divide: {'DM' . 'Class' . 'Names' . 'Blueprint' . 'Test' . 'Devide' . 'Until'}
				until: 4)
		equals:
			(Array
				with: {'DM' . 'Class' . 'Names' . 'Blueprint'}
				with: {'Test' . 'Devide' . 'Until'})
]
