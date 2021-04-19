reduce-label
reduce: aLabel

	" reduce a label by removing path at first then apply a strategy reducing
	  returns the reduced labels as String 
	"

	| aLabelWithOutPath |
	aLabelWithOutPath := self class noPath: aLabel.
	^ self abstractReduce: aLabelWithOutPath 