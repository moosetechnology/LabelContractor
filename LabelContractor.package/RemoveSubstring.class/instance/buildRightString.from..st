private
buildRightString: string from: originalString

	" 
		Build the same string as that of the first parameter, but respecting the same letter case of the string of the second parameter.
	
		>> self RemovePrefix new buildRightString: 'classname' from: 'ClassOfName' 
		returns 'ClassName'
	"

	| oneTime j |
	oneTime := 0.
	j := 1.
	^ String streamContents: [ :s | 
		  string do: [ :i | 
			  [ oneTime = 0 and: j <= originalString size ] whileTrue: [ 
				  i asLowercase = (originalString at: j) asLowercase ifTrue: [ 
					  s nextPutAll: (originalString at: j) asString.
					  " only one iteration in the loop "
					  oneTime := 1 ].
				  j := j + 1 ].
			  oneTime := 0 ] ]