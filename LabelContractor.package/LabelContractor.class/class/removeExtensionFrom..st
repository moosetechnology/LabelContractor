private
removeExtensionFrom: aString

	" Remove all the extensions from a string.
	  if the string doesn't include an extension, so we return the same string.
	  Otherwise, the string result will not contain the extension
	
		Example:
			>>> self removeExtensionFrom: 'something.txt'
			'something'
			>>> self removeExtensionFrom: 'something.txt.exe'
			'something'
			>>> self removeExtensionFrom: 'something'
			'something'
	"

	| extractedExtension string |
	string := aString.
	extractedExtension := self extractExtensionFrom: string.
	extractedExtension isEmpty
		ifTrue: [ ^ aString ]
		ifFalse: [ 
			[ extractedExtension isNotEmpty ] whileTrue: [ 
				string := string withoutSuffix: extractedExtension.
				extractedExtension := self extractExtensionFrom: string ].
			^ string ]