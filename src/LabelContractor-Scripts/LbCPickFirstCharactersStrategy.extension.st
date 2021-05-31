Extension { #name : #LbCPickFirstCharactersStrategy }

{ #category : #'*LabelContractor-Scripts' }
LbCPickFirstCharactersStrategy class >> exampleRoassal [
	
	<example>
	| contractor |
	contractor := LbCContractor new strategy: self new.
	LbCContractorScript new exampleRoassal: contractor
]

{ #category : #'*LabelContractor-Scripts' }
LbCPickFirstCharactersStrategy class >> exampleSpec [
	
	<example>
	| contractor |
	contractor := LbCContractor new strategy: self new.
	LbCContractorScript new exampleSpec: contractor
]
