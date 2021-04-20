private
pick: aString upTo: anInteger

	"
		Take the first letters of the string. The number of letters to be taken is designated by the 'upTo' argument.
		- If the string contains an extension, then the string result will contain the first letters followed by the extension.
		(eg: pick: 'AClassName.txt' upTo: 4 -> returns: 'ACla.txt')
	"

	^ anInteger >= aString size
		  ifTrue: [ aString ]
		  ifFalse: [ (aString copyFrom: 1 to: anInteger) ]