private-algorithm
removeVowelsFromSpecificWords: each

	   | firstLetters reducedString |
	   firstLetters := String new.
	   reducedString := each size < 6
		                    ifTrue: [ 
			                    each copyFrom: 3 to: each size - 1.
			                    firstLetters := each from: 1 to: 2 ]
		                    ifFalse: [ 
			                    each copyFrom: 2 to: each size - 1.
			                    firstLetters := (each at: 1) asString ].
		^ reducedString 