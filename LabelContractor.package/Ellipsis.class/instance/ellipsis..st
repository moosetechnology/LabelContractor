private
ellipsis: aString

	"
	 	return a reduced string, by tanking the first and last letters of the string seperated by '...'
	  	- if the string contains an extension(eg: 'className.txt'), so we will not consider it as last letters and the extension will be added to the end of the resulting string 
		- When specifying ellipsis size with 1, so only the first letter is returned(with the extension if it's exited).
		- When specifying ellipsisSize with a value under than 0, so the same string is returned
		
		Example: - (self ellipsisSize: 0) ellipsis: 'Example' 
		           >> 'Example'
		         - (self ellipsisSize: 1) ellipsis: 'Example' 		(or 'Example.txt' returned 'E.txt')
		           >> 'E'
				   - (self ellipsisSize: 3) ellipsis: 'Example'
					  >> 'E...le'
					- (self ellipsisSize: 4) ellipsis: 'Example'
					  >> 'Ex...le'
	"
	
	| partsSize part1 part2 indexPart2 |
	self ellipsisSize < 1 ifTrue: [ ^ aString ]. "return the same string if ellipsisSize is less than 0"
	self ellipsisSize == 1 ifTrue: [ ^ (aString at: 1) asString]. "if 1 return only the first Letter as string"
	aString size <= self ellipsisSize
		ifTrue: [ ^ aString ] 	"short enough"
		ifFalse: [ 
			partsSize := self ellipsisSize // 2.
			indexPart2 := self ellipsisSize % 2 == 0
				              ifTrue: [ aString size - partsSize ]
				              ifFalse: [ aString size - partsSize - 1 ].
			part1 := aString copyFrom: 1 to: partsSize.
			part2 := aString copyFrom: indexPart2 + 1 to: aString size.
			^ part1 , '...' , part2 ]