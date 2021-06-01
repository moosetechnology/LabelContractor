Extension { #name : #LbCRemoveLastWordStrategy }

{ #category : #'*LabelContractor-Scripts' }
LbCRemoveLastWordStrategy class >> exampleRoassal [

	<example>
	| contractor |
	contractor := LbCContractor new strategy: self new .
	LbCContractorScript new exampleRoassal: contractor
]

{ #category : #'*LabelContractor-Scripts' }
LbCRemoveLastWordStrategy class >> exampleSpec [

	<example>
	| contractor |
	contractor := LbCContractor new strategy: self new .
	LbCContractorScript new exampleSpec: contractor
]
