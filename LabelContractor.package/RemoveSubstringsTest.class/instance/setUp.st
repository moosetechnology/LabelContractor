running
setUp 

	super setUp.
	caseSensitiveExample := 'anExampleOfAClAss'.
	caseUnsensitiveExample := 'AnExampleofAClAss'.
	collectionOfSubstrings := #('An' 'Of' 'Class').
	aContractor collectionOfSubstrings: collectionOfSubstrings 
	