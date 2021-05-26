reduce-label
substituteFrom: aString 
	
	"substitute all the occurences of an oldSubtring by the new substring"

	^ aString copyReplaceAll: oldSubstring with: newSubstring  