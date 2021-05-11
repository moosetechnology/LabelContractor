*LabelContractor
contractWith: aLbCContractor

	" 
		reduce a string using a contractor 
		
		Examples:
			```Smalltalk
			| lbContractor |
			lbContractor := LbCContractor new strategy: (LbCRemovePrefixStrategy new with: 'exemple').
				
			'exampleClass' contractWith: lbContractor 
			```
			returns 'Class'
	"

	^ aLbCContractor reduce: self