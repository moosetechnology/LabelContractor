Extension { #name : #LbCEllipsisStrategy }

{ #category : #'*LabelContractor-Scripts' }
LbCEllipsisStrategy class >> exampleRoassal [
	
	<example>
	| contractor |
	contractor := LbCContractor new strategy: self new.
	LbCContractorScript new exampleRoassal: contractor
]

{ #category : #'*LabelContractor-Scripts' }
LbCEllipsisStrategy class >> exampleSpec [
	
	<example>
	| contractor |
	contractor := LbCContractor new strategy: self new.
	LbCContractorScript new exampleSpec: contractor
]
