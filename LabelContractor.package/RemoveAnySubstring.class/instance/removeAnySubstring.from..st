private
removeAnySubstring: aSubstring from: aString
	
	| string |
	string := aSubstring.
	aSubstring isCharacter ifTrue: [ string := aSubstring asString ].
	^ aString copyReplaceAll: string with: '' 