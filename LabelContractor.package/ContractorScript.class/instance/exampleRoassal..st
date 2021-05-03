examples
exampleRoassal: aContractorClass

	| canvas |
	canvas := RSCanvas new @ RSCanvasController.
	canvas addAll: (Collection withAllSubclasses collect: [ :i | 
			 RSBox new
				 model: i;
				@ (self labelInteraction: aContractorClass) ]).
	RSGridLayout new on: canvas shapes.
	canvas open