private
removeSubstringsFrom: aString

	   "
	  		Remove the suffix(or suffixes) from a string
			
			Examples:
			```Smalltalk
			LbCContractor new 
				strategy: (LbCRemoveSuffixStrategy new with: 'Else');
				reduce: 'somethingElse'.
		  ```
			-> 'something'
			
			```Smalltalk
			LbCContractor new  
				strategy: (LbCRemoveSuffixStrategy new withAll: {'some'. 'Else'}).
				reduce: 'somethingElse'.
			```	
			-> 'something'
			
			```Smalltalk
			LbCContractor new  
				strategy: (LbCRemoveSuffixStrategy new withAll: {'thingElse'. 'Else'}).
				reduce: 'somethingElse'.
			```
			-> 'some'
	 "

	   | maxSizeSuffix theRightSuffix indexOfSuffix |
	   maxSizeSuffix := 0.
	   indexOfSuffix := 0.
	   theRightSuffix := String new.
	   self collectionOfSubstrings do: [ :substring | 
		   | indexSubstringAsSuffix |
		   indexSubstringAsSuffix := aString size - substring size.
		   (aString findString: substring  startingAt: (indexSubstringAsSuffix + 1) caseSensitive: self caseSensitive) > 0 
					ifTrue: [ 
					     substring size >= maxSizeSuffix ifTrue: [ 
						     maxSizeSuffix := substring size.
						     theRightSuffix := substring.
						     indexOfSuffix := aString size - theRightSuffix size ] ] ] .
	   ^ indexOfSuffix = 0
		     ifTrue: [ aString ]
		     ifFalse: [ 
			     aString withoutSuffix:
				     (aString copyFrom: indexOfSuffix + 1 to: aString size) ]