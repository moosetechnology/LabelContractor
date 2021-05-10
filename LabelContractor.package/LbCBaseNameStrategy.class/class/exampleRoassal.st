examples
exampleRoassal

	   <example>
	   | strategy specificCollection canvas g |
	   strategy := LbCContractor new strategy: self new.

	   specificCollection := OrderedCollection new.
	   specificCollection add: 'A:unix_user/projet/ExampleClass.txt'.
	   specificCollection add: 'somethingElse.txt'.

	   canvas := RSCanvas new @ RSCanvasController.
	   g := RSGroup new.
	   g addAll: (specificCollection collect: [ :i | 
			    RSBox new
				    model: i;
				    width: 60;
				    height: 60 ]).
	   g @ (RSLabeled new text: [ :m | strategy reduce: m ]).
	   canvas addAll: g.
	   RSGridLayout new
		   gapSize: 150;
		   on: g.
	   canvas open