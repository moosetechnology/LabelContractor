tests
testRemoveVowelsFromWith

	   self
		   assert: (aContractor removeVowelsFrom: 'omethin' with: 'SomtThing')
		   equals: 'Smthng'.
	   self
		   assert: (aContractor removeVowelsFrom: 'ollectio' with: 'Collection')
		   equals: 'Cllctn'