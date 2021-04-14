removing
removeExtension: aString

	" Remove the extension from a string.
	  if the string doesn't include an extension, so we return the same string.
	  Otherwise, the string result will not contain the extension
	"

	| ext |
	ext := self class getExtensionLabel: aString.
	^ aString withoutSuffix: ext