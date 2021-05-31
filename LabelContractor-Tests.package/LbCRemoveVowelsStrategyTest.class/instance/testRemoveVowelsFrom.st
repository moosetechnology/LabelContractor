tests
testRemoveVowelsFrom

	   self
		   assert: (aContractor removeVowelsFrom: 'Something')
		   equals: 'Smthng'.
	   self
		   assert: (aContractor removeVowelsFrom: 'Example')
		   equals: 'Exmpl'