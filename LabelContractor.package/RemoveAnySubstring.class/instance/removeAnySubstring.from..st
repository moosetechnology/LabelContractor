private
removeAnySubstring: aSubstring from: aString
	
	"
		aSubstring can be a Character type or a string type
	"
	| substringToString |
	substringToString := aSubstring asString.
	^ aString copyReplaceAll: substringToString with: '' 