private-algorithm
removeVowelsFrom: reducedString with: originalString
		
		"
			removeVowelsFrom: 'omethin' with: 'SomtThing'
			-> 'smthng'
			removeVowelsFrom: 'lasseNam' with: 'ClasseName'
			-> 'ClsseNme'  
		"
	   | stringWithoutVowels |
	   stringWithoutVowels := String new.
	   reducedString do: [ :character | 
		   (character isVowel and: character isLowercase) ifFalse: [ 
			   stringWithoutVowels := stringWithoutVowels , character asString ] ].
	   stringWithoutVowels := (originalString at: 1) asString , stringWithoutVowels
	                          , originalString last asString.
	   ^ stringWithoutVowels