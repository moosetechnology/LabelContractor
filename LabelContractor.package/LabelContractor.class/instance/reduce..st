reduce-label
reduce: aString

	" reduce a label by removing path at first then apply a strategy reducing
	  returns the reduced labels as String 
	"

	| stringWithOutPath extension |
	stringWithOutPath := self class noPath: aString.
	extension := self class getExtensionOf: aString. 
	^ (self privateReduce: (self class removeExtensionFrom: stringWithOutPath )), extension