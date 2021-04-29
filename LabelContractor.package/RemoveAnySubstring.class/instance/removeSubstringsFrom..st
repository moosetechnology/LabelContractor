private
removeSubstringsFrom: aString

	| string |
	string := aString.
	self collectionOfSubstrings do: [ :substring | 
		string := string
			          copyReplaceAll: substring asString
			          with: ''
			          caseSensitive: self caseSensitive ].
	^ string