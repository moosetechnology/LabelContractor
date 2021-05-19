reduce-label
privateReduce: aString extension: extensionAsString
	
	"I am a template method and I remove the substrings of a string according to the strategy chosen in my family of strategies. "
	
	^ self collectionOfSubstrings isEmpty
		  ifTrue: [ aString , extensionAsString ]
		  ifFalse: [ 
			  | reducedString |
			  reducedString := self removeSubstringsFrom: aString , extensionAsString.
			  " if after the reduction we get an empty string then we have to return the original string (because we lose the information) "
			  reducedString isEmpty
				  ifTrue: [ aString , extensionAsString ]
				  ifFalse: [ reducedString ] ]