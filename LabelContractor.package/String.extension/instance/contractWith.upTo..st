*LabelContractor
contractWith: aContractor upTo: anInteger

	"	
		Use this method if you want to apply the contractor who reduces a thong to a specific size
		
		Examples: 
		>> 'A:/Path/examplClass' contractWith: (Ellipsis new) 
		'exam...lass'
		>> 'A:/Path/examplClass' contractWith: (Ellipsis new withPath: true)
		'A:/Path/exam...lass'
	"

	^ (aContractor upTo: anInteger) reduce: self