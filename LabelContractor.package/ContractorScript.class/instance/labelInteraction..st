as yet unclassified
labelInteraction: aContractorClass

	| labeled |
	labeled := RSLabeledWithContractor new
		           locationDo: [ :location | location above ];
		           text: [ :model | model name ];
		           contractor: aContractorClass.

	labeled location above.

	^ labeled