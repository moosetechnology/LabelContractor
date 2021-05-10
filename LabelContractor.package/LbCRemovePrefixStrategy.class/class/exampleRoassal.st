scripts
exampleRoassal
	
	<example>
	| contractor |
	contractor := LbCContractor new strategy: (self new withAll: { 'Hashed'. 'Moose'. 'Wide'. 'small'. 'Identity' }).
	LbCContractorScript new exampleRoassal: contractor