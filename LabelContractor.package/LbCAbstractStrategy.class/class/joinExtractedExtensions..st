private
joinExtractedExtensions: anOrderedCollectionOfExtensions
	
	"LbCAbstractStrategy joinExtractedExtensions: #('tar' 'gz') asOrderedCollection >>> '.tar.gz'"
	"LbCAbstractStrategy joinExtractedExtensions: #('tar') asOrderedCollection >>> '.tar'"
	
	^ anOrderedCollectionOfExtensions isEmpty
		  ifTrue: [ String new ]
		  ifFalse: [ 
			  (self extensionDelimiter join: anOrderedCollectionOfExtensions) 
				  copyWithFirst: self extensionDelimiter ]