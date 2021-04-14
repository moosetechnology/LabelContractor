computing
letterFrequency: aString

	^ self class letterFrequency at: aString ifAbsent: [12]