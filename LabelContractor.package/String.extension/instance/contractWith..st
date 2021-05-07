*LabelContractor
contractWith: aLbCContractor

	" 
		reduce a string using a contractor 
		
		Examples:
			| lbContractor |
			lbContractor := LbCContractor new 
											strategy: (LbCRemovePrefixStrategy new with: 'exemple').
			
			'exampleClass' contractWith: lbContractor 
			-> 'Class'
	"

	^ aLbCContractor reduce: self