Extension { #name : #LbCRemovePrefixStrategy }

{ #category : #'*LabelContractor-Scripts' }
LbCRemovePrefixStrategy class >> exampleRoassal [
	
	<example>
	| contractor |
	contractor := LbCContractor new strategy: (self new withAll: { 'Hashed'. 'Moose'. 'Wide'. 'small'. 'Identity' }).
	LbCContractorScript new exampleRoassal: contractor
]

{ #category : #'*LabelContractor-Scripts' }
LbCRemovePrefixStrategy class >> exampleSpec [
	
	<example>
	| contractor |
	contractor := LbCContractor new strategy: (self new withAll: { 'Hashed'. 'Moose'. 'small'. 'Identity' }).
	LbCContractorScript new exampleSpec: contractor
]
