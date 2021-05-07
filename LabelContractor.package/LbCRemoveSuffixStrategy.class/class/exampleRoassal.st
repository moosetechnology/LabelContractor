scripts
exampleRoassal
	
	<example>
	| strategy |
	strategy := LbCContractor new strategy: (self new withAll: { 'Storage'. 'Moose'. 'Bag'. 'Array'. 'set' }).
	LbCContractorScript new exampleRoassal: strategy