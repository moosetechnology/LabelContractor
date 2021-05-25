private
ellipsis: aString

	"i return a reduced string by taking the first and last letters of the string seperated by two dots ('..'). Use me only if 'upTo' is > 1"

	"LbCEllipsisStrategy new upTo: 2; ellipsis: 'Example' >>> 'E..e'"
	"LbCEllipsisStrategy new upTo: 3; ellipsis: 'Example' >>> 'E..le'"

	| indexPart2 partsSize part1 part2 |
	partsSize := self upTo // 2.
	indexPart2 := self upTo % 2 == 0
		              ifTrue: [ aString size - partsSize ]
		              ifFalse: [ aString size - partsSize - 1 ].
	part1 := aString copyFrom: 1 to: partsSize.
	part2 := aString copyFrom: indexPart2 + 1 to: aString size.
	^ part1 , '..' , part2