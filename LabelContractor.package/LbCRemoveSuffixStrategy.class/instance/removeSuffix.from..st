private
removeSuffix: indexOfSuffix from: aString

	"LbCRemoveSuffixStrategy new removeSuffix: 4 from: 'something' >>> 'some'"
	"LbCRemoveSuffixStrategy new removeSuffix: 0 from: 'something' >>> 'something'"
	
	^ indexOfSuffix = 0
		  ifTrue: [ aString ]
		  ifFalse: [ aString withoutSuffix: (aString copyFrom: indexOfSuffix + 1 to: aString size) ]