reduce-label
privateReduce: aString extension: extensionAsString
	
	"I am a template method and i remove the substrings of a string according to the strategy chosen"
	
	^ self collectionOfSubstrings isEmpty
		  ifTrue: [ aString , extensionAsString ]
		  ifFalse: [ 
			  | reducedString |
			  reducedString := self removeSubstringsFrom: aString, extensionAsString.
			  " if after the reduction i get an empty string then i have to return the original string (because we lose the information) "
			  reducedString isEmpty
				  ifTrue: [ aString , extensionAsString ]
				  ifFalse: [ reducedString ] ]