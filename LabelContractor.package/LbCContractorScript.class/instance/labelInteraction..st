examples
labelInteraction: aContractorClass

	| labeled |
	labeled := RSLabeled new 
		           text: [ :model | aContractorClass reduce: model name ].
	^ labeled 