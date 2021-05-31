Extension { #name : #LbCRemoveFrequentLettersStrategy }

{ #category : #'*LabelContractor-Scripts' }
LbCRemoveFrequentLettersStrategy class >> exampleRoassal [
	<example>
	| contractor |
	contractor := LbCContractor new strategy: self new.
	LbCContractorScript new exampleRoassal: contractor
]

{ #category : #'*LabelContractor-Scripts' }
LbCRemoveFrequentLettersStrategy class >> exampleSpec [
	
	<example>
	| contractor |
	contractor := LbCContractor new strategy: self new.
	LbCContractorScript new exampleSpec: contractor
]
