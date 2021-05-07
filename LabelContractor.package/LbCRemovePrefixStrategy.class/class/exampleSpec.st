scripts
exampleSpec
	
	<example>
	| strategy |
	strategy := LbCContractor new strategy: (self new withAll: { 'Hashed'. 'Moose'. 'small'. 'Identity' }).
	LbCContractorScript new exampleSpec: strategy