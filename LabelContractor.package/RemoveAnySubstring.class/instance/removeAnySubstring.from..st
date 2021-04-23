private
removeAnySubstring: aSubstring from: aString

	| splitedString  |
	
	splitedString := aSubstring split: aString .
	^ '' join: splitedString .