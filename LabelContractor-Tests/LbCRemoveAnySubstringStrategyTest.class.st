Class {
	#name : #LbCRemoveAnySubstringStrategyTest,
	#superclass : #LbCRemoveSubstringsStrategyTest,
	#category : 'LabelContractor-Tests'
}

{ #category : #creation }
LbCRemoveAnySubstringStrategyTest >> classToTest [

	^ LbCRemoveAnySubstringStrategy 
]

{ #category : #'expected-result' }
LbCRemoveAnySubstringStrategyTest >> expectedReducedLabelCaseSensitive [

	^ 'anExampleAClAss'
]

{ #category : #'expected-result' }
LbCRemoveAnySubstringStrategyTest >> expectedReducedLabelCaseUnsensitive [

	^ 'ExampleA'
]

{ #category : #tests }
LbCRemoveAnySubstringStrategyTest >> testRemoveSubstringsFrom [

	   self
		   assert: ((self classToTest new with: 'Of') removeSubstringsFrom: 'exampleOfSomeOfThings')
		   equals: 'exampleSomeThings'.

	   self
		   assert: ((self classToTest new with: '&?;') removeSubstringsFrom: 'example')
		   equals: 'example'.

	   self
		   assert: ((self classToTest new withAll: { 'An'. 'Exam' }) 
				    		removeSubstringsFrom: 'AnExampleOfExamination')
		   equals: 'pleOfination'.

]
