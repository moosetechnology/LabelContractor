scripts
exampleSpec
	
	<example>
	| contractor |
	contractor := LbCContractor new strategy: (self new withAll: { 'Storage'. 'Moose'. 'Bag'. 'Array' }).
	LbCContractorScript new exampleSpec: contractor