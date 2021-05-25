private
removeExtensionsFrom: aString

	"Remove all the extensions from a string."
	
	"LbCAbstractStrategy removeExtensionsFrom: 'something.txt' >>> 'something'"
	"LbCAbstractStrategy removeExtensionsFrom: 'something.tar.gz' >>> 'something'"
	"LbCAbstractStrategy removeExtensionsFrom: 'something' >>> 'something' "

	| string extractExtensions  |
	string := aString.
	extractExtensions := (self extractExtensionsFrom: string) reversed.	
	extractExtensions do: [ :each | string := self removeExtension: each from: string ].
	^ string 