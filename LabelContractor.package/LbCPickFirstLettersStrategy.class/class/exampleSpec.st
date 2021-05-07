scripts
exampleSpec
	
	<example>
	| strategy |
	strategy := LbCContractor new strategy: self new.
	LbCContractorScript new exampleSpec: strategy