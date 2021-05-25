private
removeExtension: anExtension from: aString

	"Remove an extension from a string. If the string doesn't include anExtension, so we return the same string."
	
	"LbCAbstractStrategy removeExtension: 'txt' from: 'something.txt' >>> 'something'"
	
	| extensionWithDelimiter |
	extensionWithDelimiter := anExtension copyWithFirst: self extensionDelimiter.
	^ aString withoutSuffix: extensionWithDelimiter 