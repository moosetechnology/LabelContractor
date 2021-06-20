Extension { #name : #LbCRemoveAnyWordsAtStrategy }

{ #category : #'*LabelContractor-Scripts' }
LbCRemoveAnyWordsAtStrategy class >> exampleRoassal [

	<example>
	| contractor |
	contractor := LbCContractor new removeWordsAt: (1 to: 2) .
	LbCContractorScript new exampleRoassal: contractor
]

{ #category : #'*LabelContractor-Scripts' }
LbCRemoveAnyWordsAtStrategy class >> exampleSpec [

	<example>
	| contractor |
	contractor := LbCContractor new removeWordsAt: (1 to: 2) .
	LbCContractorScript new exampleSpec: contractor
]
