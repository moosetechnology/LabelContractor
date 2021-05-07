scripts
exampleRoassal
	
	<example>
	| strategy |
	strategy := LbCContractor new strategy: self new.
	LbCContractorScript new exampleRoassal: strategy