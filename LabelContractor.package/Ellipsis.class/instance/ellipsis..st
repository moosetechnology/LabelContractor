methods
ellipsis: aString

	| strWithoutSuff partSize part1 part2 ext indexPart2 |
	ext := self class getExtensionLabel: aString.
	strWithoutSuff := self removeExtension: aString.
	strWithoutSuff size <= self ellipsisSize
		ifTrue: [ ^ aString ]
		ifFalse: [
			Transcript show: 'ellipsis = '; show: self ellipsisSize. 
			partSize := self ellipsisSize // 2.
			part1 := aString copyFrom: 1 to: partSize.
			"the start index of the last part of the split."
			indexPart2 := strWithoutSuff size - partSize.
			part2 := aString copyFrom: (indexPart2+1) to: aString size.
			^ part1 , '...' , part2 ]