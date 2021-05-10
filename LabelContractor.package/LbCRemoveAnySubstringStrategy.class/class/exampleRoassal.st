scripts
exampleRoassal
	
	<example>
	| strategy |
	strategy := LbCContractor new strategy: (self new withAll: { 'Hashed'. 'Moose'. 'value'. 'Identity' }) .
	LbCContractorScript new exampleRoassal: strategy