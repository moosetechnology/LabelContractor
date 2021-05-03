examples
exampleRoassal: aContractorClass

	| canvas |
	canvas := RSCanvas new @ RSCanvasController.
	canvas addAll: (Collection withAllSubclasses collect: [ :i | 
			 RSBox new
				 model: i;
				 @ (RSLabeledWithContractor new
						  locationDo: [ :location | location top ];
						  text: [ :model | model name ];
						  contractor: aContractorClass) ]).
	RSGridLayout new on: canvas shapes.
	canvas open