computing
noVowelIn: aString

	   "
		 	Return true if the string doesn't contain any vowel(except y). Otherwise, return false.
			
			Examples:
				noVowelIn: 'fry' 
			 	-> true
				
				noVowelIn: 'play'
				-> false   
		"

	   ^ aString noneSatisfy: [ :each | each isVowel ]