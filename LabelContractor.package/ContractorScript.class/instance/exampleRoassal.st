examples
exampleRoassal

	<script: 'self new exampleRoassal'>
	| canvas |
	canvas := RSCanvas new @ RSCanvasController.
	canvas addAll: (Collection withAllSubclasses collect: [ :i | 
			 RSBox new
				 model: i;
				 @ (RSLabeledWithContractor new
						  text: [ :model | model name ];
						  contractor: Ellipsis) ]).
	RSGridLayout new on: canvas shapes.
	canvas open