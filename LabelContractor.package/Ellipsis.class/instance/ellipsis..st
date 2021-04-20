private
ellipsis: aString

	"
	 	return a reduced string, by tanking the first and last letters of the string seperated by '...'
	  	- if the string contains an extension(eg: 'className.txt'), so we will not consider it as last letters and the extension will be added to the end of the resulting string 
		
	"

	| strWithoutSuff partsSize part1 part2 ext indexPart2 |
	ext := self class getExtensionLabel: aString.
	strWithoutSuff := self class removeExtension: aString.
	strWithoutSuff size <= self ellipsisSize
		ifTrue: [ ^ aString ]
		ifFalse: [ 
			partsSize := self ellipsisSize // 2.
			part1 := aString copyFrom: 1 to: partsSize.
			"the start index of the last part of the split."
			indexPart2 := strWithoutSuff size - partsSize.
			part2 := aString copyFrom: indexPart2 + 1 to: aString size.
			^ part1 , '...' , part2 ]