private
ellipsis: aString

	"
	 	return a reduced string, by tanking the first and last letters of the string seperated by '...'
	  	- if the string contains an extension(eg: 'className.txt'), so we will not consider it as last letters and the extension will be added to the end of the resulting string 
		- When specifying ellipsis size with 1, so only the first letter is returned(with the extension if it existed.)
		
		Example: - (Ellipsis new upTo: 0) ellipsis: 'Example' 
		           ''
		         - (Ellipsis new upTo: 1) ellipsis: 'Example' 		(or 'Example.txt' it returns 'E.txt')
		           'E'
				    - (Ellipsis new upTo: 3) ellipsis: 'Example'
					    'E...le'
					  - (Ellipsis new upTo: 4) ellipsis: 'Example'
					    'Ex...le'
					  - (Ellipsis new upTo: 5) ellipsis: 'Example'
					    'Ex...ple'
	"

	| partsSize part1 part2 indexPart2 |
	^ self upTo = 1
		  ifTrue: [ (aString at: 1) asString ] "if upTo = 1, so return only the first Letter as string"
		  ifFalse: [ 
			  aString size <= self upTo
				  ifTrue: [ aString ] "short enough"
				  ifFalse: [ 
					  partsSize := self upTo // 2.
					  indexPart2 := self upTo % 2 == 0 
						                ifTrue: [ aString size - partsSize ]
						                ifFalse: [ aString size - partsSize - 1 ].
					  part1 := aString copyFrom: 1 to: partsSize.
					  part2 := aString copyFrom: indexPart2 + 1 to: aString size.
					  part1 , '..' , part2 ] ]