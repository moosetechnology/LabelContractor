private
removeExtensionFrom: aString

	" Remove all the extensions from a string.
	  If the string doesn't include an extension, so we return the same string."
	
	" LbCAbstractStrategy removeExtensionFrom: 'something.txt' >>> 'something'"
	" LbCAbstractStrategy removeExtensionFrom: 'something.txt.exe' >>> 'something'"
	" LbCAbstractStrategy removeExtensionFrom: 'something' >>> 'something' "

	| string extractedExtension |
	string := aString.
	extractedExtension := self extractExtensionFrom: aString.
	^ extractedExtension isEmpty
		ifTrue: [ aString ]
		ifFalse: [ 
			| currentExtension |
			currentExtension := extractedExtension.
			" if the string contains more than one extension " 
			[ currentExtension isNotEmpty ] whileTrue: [  
				string := string withoutSuffix: currentExtension.
				currentExtension := self extractExtensionFrom: string ].
			string ]