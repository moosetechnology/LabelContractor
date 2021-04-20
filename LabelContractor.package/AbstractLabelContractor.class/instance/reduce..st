reduce-label
reduce: aString

	" reduce a label by removing path at first then apply a strategy reducing
	  returns the reduced labels as String 
	"

	| aaStringWithOutPath |
	aaStringWithOutPath := self class noPath: aString.
	^ self abstractReduce: aaStringWithOutPath 