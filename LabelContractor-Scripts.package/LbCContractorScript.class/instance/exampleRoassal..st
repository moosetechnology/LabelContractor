examples
exampleRoassal: aContractorClass

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