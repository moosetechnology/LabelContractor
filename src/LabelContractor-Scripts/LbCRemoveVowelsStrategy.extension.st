Extension { #name : #LbCRemoveVowelsStrategy }

{ #category : #'*LabelContractor-Scripts' }
LbCRemoveVowelsStrategy class >> exampleRoassal [
	
	<example>
	| contractor |
	contractor := LbCContractor new strategy: self new.
	LbCContractorScript new exampleRoassal: contractor
]

{ #category : #'*LabelContractor-Scripts' }
LbCRemoveVowelsStrategy class >> exampleSpec [
	
	<example>
	| contractor |
	contractor := LbCContractor new strategy: self new.
	LbCContractorScript new exampleSpec: contractor
]
