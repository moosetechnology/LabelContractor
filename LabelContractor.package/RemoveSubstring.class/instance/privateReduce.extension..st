reduce-label
privateReduce: aString extension: anotherString

	| string aSubstring reducedString |
	string := aString.
	aSubstring := self substring.
	self caseSensitive ifFalse: [ 
		string := aString asLowercase.
		aSubstring := self class convertAsLowerCase: self substring ].
	reducedString := self privateRemoveSubstring: aSubstring from: string.
	^ self buildRightString: reducedString from: aString , anotherString