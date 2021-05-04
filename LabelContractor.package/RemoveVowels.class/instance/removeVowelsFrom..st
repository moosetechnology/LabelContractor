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
			-> 'other'
		"

	   | stringWithoutFirstLetter |
		(string size = 1 and: (self isVowelAt: 1 in: string)) ifTrue: [ ^ string reject: #isVowel ].
	   stringWithoutFirstLetter := self keepFirstLetter: string.
	   ^ (string at: 1) asString, (stringWithoutFirstLetter reject: #isVowel)