"
i am a contract script
"
Class {
	#name : #LbCContractorScript,
	#superclass : #Object,
	#category : 'LabelContractor-Scripts'
}

{ #category : #examples }
LbCContractorScript >> exampleRoassal: aContractorClass [

	   | canvas g |
	   canvas := RSCanvas new @ RSCanvasController.
	   g := RSGroup new.
	   g addAll: (Collection withAllSubclasses collect: [ :i | 
			    RSBox new
				    model: i ]).
	   g @ (self labelInteraction: aContractorClass).
	   canvas addAll:
		   (g copyFrom: 1 to: Collection withAllSubclasses size // 2).
	   RSGridLayout new gapSize: 170; on: g.
	   canvas open
]

{ #category : #examples }
LbCContractorScript >> exampleSpec: aLbCContractor [

	   SpListPresenter new
		   items: Smalltalk globals allClasses;
		   display: [ :item | aLbCContractor reduce: item name  ];
		   openWithSpec
]

{ #category : #examples }
LbCContractorScript >> labelInteraction: aContractor [

	| labeled |
	labeled := RSLabeled new 
		           text: [ :model | aContractor reduce: model name ].
	^ labeled 
]
