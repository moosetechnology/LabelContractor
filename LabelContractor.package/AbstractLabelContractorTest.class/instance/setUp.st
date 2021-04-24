running
setUp

	super setUp.
	exampleString := 'AnExampleOfAClass.txt' .
	exampleSubstring := exampleString truncateTo: 2.
	aContractor := self classToTest new.
	