private
addIndexes: listOfIndexes WhenAStringContainsVowels: aString startingAt: index

	^ index = aString size
		  ifTrue: [ listOfIndexes add: index ]
		  ifFalse: [ 
			  ((self isConsonant: (aString at: index - 1)) and:
				   (self isConsonant: (aString at: index + 1))) ifTrue: [ 
				  listOfIndexes add: index ] ]