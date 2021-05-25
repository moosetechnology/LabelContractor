private
extractExtensionsFrom: aString

	"if the string represents a filename so we return its extension."
		
	"LbCAbstractStrategy extractExtensionsFrom: 'file.tar' >>> #('tar')"	
	"LbCAbstractStrategy extractExtensionsFrom: 'file.tar.gz' >>> #('tar' 'gz')"	
		
	| extractedExtensions |
	extractedExtensions := (self extensionDelimiter split: aString) allButFirst.
	^  extractedExtensions asOrderedCollection removeAllSuchThat: [ :each | each isEmpty ]