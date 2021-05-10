scripts
exampleSpec
	
	<example>
	| strategy |
	strategy := LbCContractor new strategy: (self new withAll: { 'Storage'. 'Moose'. 'Bag'. 'Array' }).
	LbCContractorScript new exampleSpec: strategy