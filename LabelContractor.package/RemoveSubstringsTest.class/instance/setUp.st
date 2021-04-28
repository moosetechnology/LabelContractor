running
setUp 

	super setUp.
	caseSensitiveExample := 'anExampleOfAClAss'.
	caseUnsensitiveExample := 'AnExampleOfAClAss'.
	collectionOfSubstrings := #('An' 'Of' 'Class').
	aContractor collectionOfSubstrings: collectionOfSubstrings 
	