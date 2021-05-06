private
removeSubstringsFrom: aString

	   "
	  		Return a string without a suffix
			
			Examples:
			(LbCRemoveSuffixStrategy with: 'Else') removeSubstringsFrom: 'somethingElse'.
			-> 'something'
		
			(LbCRemoveSuffixStrategy withAll: {'some'. 'Else'}) removeSubstringsFrom: 'somethingElse'.
			-> 'something'
		
			(LbCRemoveSuffixStrategy withAll: {'thingElse'. 'Else'}) removeSubstringsFrom: 'somethingElse'.
			-> 'some'
	 "

	   | maxSizeSuffix theRightSuffix indexOfSuffix |
	   maxSizeSuffix := 0.
	   indexOfSuffix := 0.
	   theRightSuffix := String new.
	   self collectionOfSubstrings do: [ :substring | 
		   | indexSubstringAsSuffix |
		   indexSubstringAsSuffix := aString size - substring size.
		   (aString 
				findString: substring 
				startingAt: (indexSubstringAsSuffix + 1) 
				caseSensitive: self caseSensitive) > 0 ifTrue: [ 
			     (aString compare: substring caseSensitive: self caseSensitive) = 2
				     ifTrue: [ ^ String new ] " if a substring is the same as the string so we return an empty string "
				     ifFalse: [ 
					     substring size >= maxSizeSuffix ifTrue: [ 
						     maxSizeSuffix := substring size.
						     theRightSuffix := substring.
						     indexOfSuffix := aString size - theRightSuffix size ] ] ] ].
	   ^ indexOfSuffix = 0
		     ifTrue: [ aString ]
		     ifFalse: [ 
			     aString withoutSuffix:
				     (aString copyFrom: indexOfSuffix + 1 to: aString size) ]