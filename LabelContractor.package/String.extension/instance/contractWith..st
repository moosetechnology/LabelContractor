*LabelContractor
contractWith: aContractor

	" 
		reduce a string using a contractor 
		
		Examples:
		>> 'A:/Path/examplClass' contractWith: (RemovePrefix with: 'exampl') 
		'Class'
		>> 'A:/Path/examplClass' contractWith: (RemovePrefix new with: 'exampl'; withPath: true) 
		'A:/Path/Class'

	"

	^ aContractor reduce: self