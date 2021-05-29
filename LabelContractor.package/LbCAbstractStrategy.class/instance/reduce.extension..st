reduce-label
reduce: aString extension: anExtension

	"Use me if aString contains more than one extension and you want to specify it. Otherwise, use #reduce: to let the program deduce itself the extension. My role is to reduce a string 'aString' by keeping the specified extension 'anExtension'. "
	
	| stringWithNoExtension |
	aString isEmpty ifTrue: [ ^ aString ]. 
	stringWithNoExtension := self class removeExtensionsFrom: aString.
	^ self privateReduce: stringWithNoExtension extension: anExtension.
