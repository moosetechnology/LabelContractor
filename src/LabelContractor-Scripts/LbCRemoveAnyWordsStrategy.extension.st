Extension { #name : #LbCRemoveAnyWordsStrategy }

{ #category : #'*LabelContractor-Scripts' }
LbCRemoveAnyWordsStrategy class >> exampleRoassal [

	<example>
	| contractor |
	contractor := LbCContractor new removeWordsAt: (1 to: 2) .
	LbCContractorScript new exampleRoassal: contractor
]

{ #category : #'*LabelContractor-Scripts' }
LbCRemoveAnyWordsStrategy class >> exampleSpec [

	<example>
	| contractor |
	contractor := LbCContractor new removeWordsAt: (1 to: 2) .
	LbCContractorScript new exampleSpec: contractor
]
