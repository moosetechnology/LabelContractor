Extension { #name : #LbCRemoveAnySubstringStrategy }

{ #category : #'*LabelContractor-Scripts' }
LbCRemoveAnySubstringStrategy class >> exampleRoassal [
	
	<example>
	| contractor |
	contractor := LbCContractor new strategy: (self new withAll: { 'Hashed'. 'Moose'. 'value'. 'Identity' }) .
	LbCContractorScript new exampleRoassal: contractor
]

{ #category : #'*LabelContractor-Scripts' }
LbCRemoveAnySubstringStrategy class >> exampleSpec [
	
	<example>
	| contractor |
	contractor := LbCContractor new strategy: (self new withAll: { 'Hashed'. 'Moose'. 'value'. 'Identity' }).
	LbCContractorScript new exampleSpec: contractor
]
