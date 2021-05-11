reduce-label
privateReduce: aString extension: extensionAsString

	   ^ self collectionOfSubstrings isEmpty
		     ifTrue: [ aString , extensionAsString ]
		     ifFalse: [ 
			     | reducedString |
			     reducedString := self removeSubstringsFrom: aString , extensionAsString.
			     reducedString isEmpty " if after the reduction we get an empty string then we have to return the original string (because we lose the information) "
				     ifTrue: [ aString , extensionAsString ] 
				     ifFalse: [ reducedString ] ]