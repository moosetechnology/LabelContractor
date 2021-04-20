reduce-label
reduce: aString

	" reduce a label by removing path at first then apply a strategy reducing
	  returns the reduced labels as String 
	"

	| stringWithOutPath extension |
	stringWithOutPath := self class noPath: aString.
	extension := self class getExtensionLabel: aString.
	^ self privateReduce: (self class removeExtension: stringWithOutPath ) extension: extension