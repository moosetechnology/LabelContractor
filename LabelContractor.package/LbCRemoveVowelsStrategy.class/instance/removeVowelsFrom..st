private-algorithm
removeVowelsFrom: string

	   "
			Remove vowels from a string.
			The first letter is always kept whether it is a vowel or a consonant
			
			self removeVowelsFrom: 'Something' 
			-> 'smthng'
			
			self removeVowelsFrom: 'Other' 
			-> 'Othr'  
			
			self removeVowelsFrom: 'other'
			-> 'othr'
		"

	   | stringWithoutFirstLetter |
		(string size = 1 and: ((string at: 1) isVowel)) ifTrue: [ ^ string reject: #isVowel ].
	   stringWithoutFirstLetter := self keepFirstLetter: (self class removeYVowelFrom: string).
	   ^ (string at: 1) asString, (stringWithoutFirstLetter reject: #isVowel)