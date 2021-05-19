*LabelContractor
contractWith: aLbCContractor

	" reduce a string using a contractor "
		
	" 'exampleClass' contractWith: (LbCContractor new removePrefix: 'example') >>> 'Class' " 
	" 'exampleClass' contractWith: (LbCContractor new removeVowels) >>> 'exmplClss' "

	^ aLbCContractor reduce: self