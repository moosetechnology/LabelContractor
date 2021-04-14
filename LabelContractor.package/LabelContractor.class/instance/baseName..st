accessing
baseName: aString

	| strNoPath strNoPathNoExtension |
	
	strNoPath := self noPath: aString.
	strNoPathNoExtension := self removeExtension: strNoPath .
	^ strNoPathNoExtension 
	