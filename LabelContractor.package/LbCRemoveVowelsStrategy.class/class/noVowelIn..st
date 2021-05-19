private
noVowelIn: aString

	" Return true if the string doesn't contain any vowel('aeiou'). Otherwise, return false. "

	^ aString noneSatisfy: [ :each | each isVowel ]