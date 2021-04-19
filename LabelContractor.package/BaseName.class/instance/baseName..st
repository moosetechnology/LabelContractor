accessing
baseName: aString

	| strNoPathNoExtension |
	
	strNoPathNoExtension := self class removeExtension: aString .
	^ strNoPathNoExtension 
	