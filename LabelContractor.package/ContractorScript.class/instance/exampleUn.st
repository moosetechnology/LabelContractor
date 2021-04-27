as yet unclassified
exampleUn

	<script: 'self new exampleUn' >
	| canvas |
	canvas := RSCanvas new @ RSCanvasController .
  canvas 
  addAll: (
    (Collection withAllSubclasses) collect: [ :i | 
       RSBox new 
       model: i; 
       @ (RSLabeledWithContractor new text: [ :model | model name ]; contractor: RemoveFrequentLetter )
    ]).
  RSGridLayout new on: canvas shapes.
  canvas open
	