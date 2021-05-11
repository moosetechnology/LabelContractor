private
removeSubstringsFrom: aString
	"
		remove the prefix(or prefixes) from a string 
		
		Examples:
			
			```Smalltalk
			| contractor |
			contractor := LbCContractor new strategy: (LbCRemovePrefixStrategy new with: 'some'). 
			contractor reduce: 'something'.
			```
			-> 'thing'
			
			```Smalltalk
			contractor strategy: (LbCRemovePrefixStrategy new withAll: {'some'. 'thing'}).
			contractor reduce: 'something'.
			```
			-> 'thing'
			
			```Smalltalk
			contractor strategy: (LbCRemovePrefixStrategy new withAll: {'something'. 'some'}).
			contractor reduce: 'somethingElse'.
			```
			-> 'Else'
			
	 "
	
	| maxSizePrefix theRightPrefix |
	maxSizePrefix := 0.
	theRightPrefix := String new.
	self collectionOfSubstrings do: [ :substring | 
		(aString findString: substring startingAt: 1 caseSensitive: self caseSensitive) = 1 
			ifTrue: [ 
				substring size >= maxSizePrefix ifTrue: [ 
					maxSizePrefix := substring size.
					theRightPrefix := substring ] ] ].
	^ aString withoutPrefix:
		  (aString copyFrom: 1 to: theRightPrefix size)