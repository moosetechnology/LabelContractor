reduce-label
reduce: aString

	"I am a template method, and i can reduce a string. If the string aString represents a filename, then i will isolate the file extension and the reduction is applied only on the basename."
	
	| getExtension |
	aString isEmpty ifTrue: [ ^ aString ]. 
	getExtension := self class joinExtractedExtensions: (self class extractExtensionsFrom: aString).
	^ self reduce: aString extension: getExtension 
