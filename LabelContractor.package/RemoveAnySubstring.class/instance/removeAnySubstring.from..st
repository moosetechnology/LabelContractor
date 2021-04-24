private
removeAnySubstring: aSubstring from: aString
	
	^ aString copyReplaceAll: aSubstring with: '' 