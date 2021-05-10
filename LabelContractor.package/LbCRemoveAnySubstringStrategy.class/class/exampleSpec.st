scripts
exampleSpec
	
	<example>
	| contractor |
	contractor := LbCContractor new strategy: (self new withAll: { 'Hashed'. 'Moose'. 'value'. 'Identity' }).
	LbCContractorScript new exampleSpec: contractor