private-algorithm
removeVowelsFrom: string
		
		"
			Remove vowels from a string.
			The first letter is always kept whether it is a vowel or a consonant
			
			self removeVowelsFrom: 'Something' 
			-> 'smthng'
			self removeVowelsFrom: 'Other' 
			-> 'Othr'  
		"
	  | stringWithoutFirstLetter stringWithoutVowels |
		stringWithoutFirstLetter := self keepFirstLetter: string.
	   stringWithoutVowels := String new.
	   stringWithoutFirstLetter do: [ :character | 
		   (character isVowel and: character isLowercase) ifFalse: [ 
			   stringWithoutVowels := stringWithoutVowels , character asString ] ].
	   ^ string at: 1, stringWithoutVowels