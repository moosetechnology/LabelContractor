computing
noVowelIn: aString

	   "
		 	Return true if the string doesn't contain any vowel('aeiou'). Otherwise, return false.
			
			Examples:
				LbCRemoveVowelsStrategy noVowelIn: 'fry' 
			 	-> true
				
				LbCRemoveVowelsStrategy noVowelIn: 'play'
				-> false   
		"

	   ^ aString noneSatisfy: [ :each | each isVowel ]