scripts
exampleSpec
	
	<example>
	| contractor |
	contractor := LbCContractor new strategy: (self new withAll: { 'Hashed'. 'Moose'. 'small'. 'Identity' }).
	LbCContractorScript new exampleSpec: contractor