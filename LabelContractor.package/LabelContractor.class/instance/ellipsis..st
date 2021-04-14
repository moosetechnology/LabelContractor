methods
ellipsis: aString 

	| d part1 part2 ext prefix |
	ext := self class getExtensionLabel: aString.
	(aString copyReplaceAll: ext with: '') size <= self sizeTo 
		ifTrue: [ ^ aString ]
		ifFalse: [ 
			d := sizeTo // 2.
			part1 := aString copyFrom: 1 to: d.
			prefix := aString size - ext size - (d - 1).
			part2 := aString copyFrom: prefix to: aString size.
			^ part1 , '...' , part2 ]