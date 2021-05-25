removing
removePathFrom: aString

	"Remove the 'path' part of the string. If the string doesn't contain the 'path' side so i return the same string"	  
	
	"LbCContractor removePathFrom: 'A:example/path/file.ext' >>> 'file.ext'"
	"LbCContractor removePathFrom: 'file.ext' >>> 'file.ext'"
	
	^ aString copyReplaceAll: (self extractPathFrom: aString) with: '' 