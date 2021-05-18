reduce-label
reduce: aString

	" Reduce a label by removing path if its a fully qualified name(by default), then apply a contraction strategy.
	  Returns the reduced string .
	"
	
	| noPath extension pathPart reducedString |
	aString isEmpty ifTrue: [ ^ aString ].
	noPath := self class removePathFrom: aString.
	extension := self class extractExtensionFrom: aString.
	reducedString := self privateReduce: (self class removeExtensionFrom: noPath) extension: extension.
	^ withPath
		  ifTrue: [ 
			  pathPart := self class extractPathFrom: aString.
			  pathPart , reducedString ]
		  ifFalse: [ reducedString ]