picking
pick: aString upTo: anInteger

	^ anInteger >= aString size
		  ifTrue: [ aString ]
		  ifFalse: [ aString copyFrom: 1 to: anInteger ]