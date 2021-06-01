Extension { #name : #LbCRemoveFirstWordStrategy }

{ #category : #'*LabelContractor-Scripts' }
LbCRemoveFirstWordStrategy class >> exampleRoassal [

	<example>
	| contractor |
	contractor := LbCContractor new strategy: self new .
	LbCContractorScript new exampleRoassal: contractor
]

{ #category : #'*LabelContractor-Scripts' }
LbCRemoveFirstWordStrategy class >> exampleSpec [

	<example>
	| contractor |
	contractor := LbCContractor new strategy: self new .
	LbCContractorScript new exampleSpec: contractor
]
