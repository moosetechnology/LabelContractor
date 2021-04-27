reduce-label
reduce: aString

	" reduce a label by removing path at first(by default) then apply a contraction strategy
	  returns the reduced string 
	"

	| noPath extension pathPart reducedString |
	noPath := self class removePathFrom: aString.
	extension := self class extractExtensionFrom: aString.
	reducedString := self
		                 privateReduce: (self class removeExtensionFrom: noPath)
		                 extension: extension.
	^ withPath
		  ifTrue: [ 
			  pathPart := self class extractPathFrom: aString.
			  pathPart , reducedString ]
		  ifFalse: [ reducedString ]