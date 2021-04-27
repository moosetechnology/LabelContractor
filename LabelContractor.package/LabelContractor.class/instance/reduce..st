reduce-label
reduce: aString

	" Reduce a label by removing path(by default) then apply a contraction strategy.
	  Returns the reduced string .
	"
	
	| noPath extension pathPart reducedString |
	
	self upTo < 1 ifTrue: [ ^ String empty ]. 
	noPath := self class removePathFrom: aString.
	extension := self class extractExtensionFrom: aString.
	reducedString := self privateReduce: (self class removeExtensionFrom: noPath) extension: extension.
	^ withPath
		  ifTrue: [ 
			  pathPart := self class extractPathFrom: aString.
			  pathPart , reducedString ]
		  ifFalse: [ reducedString ]