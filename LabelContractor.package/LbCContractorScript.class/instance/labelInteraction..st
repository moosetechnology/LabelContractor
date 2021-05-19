examples
labelInteraction: aContractor

	| labeled |
	labeled := RSLabeled new 
		           text: [ :model | aContractor reduce: model name ].
	^ labeled 