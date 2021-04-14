methods
ellipsis: aString

	| partSize part1 part2 ext indexPart2 |
	ext := self class getExtensionLabel: aString.
	(aString copyReplaceAll: ext with: '') size <= self ellipsisSize
		ifTrue: [ ^ aString ]
		ifFalse: [ 
			partSize := self ellipsisSize // 2.
			part1 := aString copyFrom: 1 to: partSize.
			"the start index of the last part of the split."
			indexPart2 := aString size - ext size - (partSize - 1).
			part2 := aString copyFrom: indexPart2 to: aString size.
			^ part1 , '...' , part2 ]