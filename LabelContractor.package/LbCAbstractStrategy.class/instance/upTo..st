accessing
upTo: anInteger

	upTo := anInteger isInteger
		        ifTrue: [ anInteger max: 0 ]
		        ifFalse: [ 0 ] "if the value's type isn't an integer so we set the 'upTo' to zero. 
		                        That's mean we will not reduce the string, and an empty string will be returned"