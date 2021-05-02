private
pickFirstLetters: aString

	"
		Take the first letters of the string. The number of letters to be taken is designated by the 'upTo' argument.
		- If the string contains an extension, then the string result will contain the first letters followed by the extension.
		>>> (PickFirstLetters upTo: 4) reduce: 'AClassName.txt'
		returns: 'ACla(..).txt'
		>>> (PickFirstLetters upTo: 4) reduce: 'AClassName'
		returns: 'AClass(..)'
	"

	^ self upTo >= aString size
		  ifTrue: [ aString ]
		  ifFalse: [ (aString copyFrom: 1 to: self upTo), '(..)' ]