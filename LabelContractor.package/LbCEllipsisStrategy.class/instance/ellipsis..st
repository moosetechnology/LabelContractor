private
ellipsis: aString

	" return a reduced string by taking the first and last letters of the string seperated by two dots ('..').
		When specifying #upTo: (the size) with 1, so only the first letter is returned "
			
	"	LbCEllipsisStrategy new upTo: 0; ellipsis: 'Example'  >>> '' "
	"	LbCEllipsisStrategy new upTo: 1; ellipsis: 'Example' >>> 'E' "      
	" LbCEllipsisStrategy new upTo: 3; ellipsis: 'Example' >>> 'E..le' "
	
	| partsSize part1 part2 indexPart2 |
	self upTo <= 0 ifTrue: [ ^ String new  ].
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