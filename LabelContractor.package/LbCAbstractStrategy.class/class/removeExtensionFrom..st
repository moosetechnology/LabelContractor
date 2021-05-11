private
removeExtensionFrom: aString

	" Remove all the extensions from a string.
	  if the string doesn't include an extension, so we return the same string.
	  Otherwise, the string result will not contain the extension
	
		Examples:
			LbCAbstractStrategy removeExtensionFrom: 'something.txt' >>> 'something'
			LbCAbstractStrategy removeExtensionFrom: 'something.txt.exe' >>> 'something'
			LbCAbstractStrategy removeExtensionFrom: 'something' >>> 'something'
	"

	| extractedExtension string |
	string := aString.
	extractedExtension := self extractExtensionFrom: string.
	^ extractedExtension isEmpty
		ifTrue: [ aString ]
		ifFalse: [ 
			" if the string contains more than one extension " 
			[ extractedExtension isNotEmpty ] whileTrue: [  
				string := string withoutSuffix: extractedExtension.
				extractedExtension := self extractExtensionFrom: string ].
			string ]