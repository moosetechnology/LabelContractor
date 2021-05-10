scripts
exampleRoassal
	
	<example>
	| strategy |
	strategy := LbCContractor new strategy: (self new withAll: { 'Hashed'. 'Moose'. 'Wide'. 'small'. 'Identity' }).
	LbCContractorScript new exampleRoassal: strategy