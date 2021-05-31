Extension { #name : #LbCRemoveSuffixStrategy }

{ #category : #'*LabelContractor-Scripts' }
LbCRemoveSuffixStrategy class >> exampleRoassal [
	
	<example>
	| contractor canvas g |
	contractor := LbCContractor new strategy: (self new withAll: { 'Storage'. 'Moose'. 'Bag'. 'Array'. 'set' }).
	
	canvas := RSCanvas new @ RSCanvasController.
	g := RSGroup new.
	g addAll: (Collection withAllSubclasses collect: [ :i | 
			RSBox new
				   model: i ]).
	   g @ (LbCContractorScript new labelInteraction: contractor).
	   canvas addAll:
		   (g copyFrom: 1 to: Collection withAllSubclasses size // 2).
	   RSGridLayout new gapSize: 200; on: g.
	   canvas open
]

{ #category : #'*LabelContractor-Scripts' }
LbCRemoveSuffixStrategy class >> exampleSpec [
	
	<example>
	| contractor |
	contractor := LbCContractor new strategy: (self new withAll: { 'Storage'. 'Moose'. 'Bag'. 'Array' }).
	LbCContractorScript new exampleSpec: contractor
]
