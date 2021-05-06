private
removeSubstringsFrom: aString

	   "
	  return a string without suffix 
		(RemoveSuffix with: 'Else') removeSubstringsFrom: 'somethingElse'.
		'something'
		(RemoveSuffix withAll: {'some'. 'Else'}) removeSubstringsFrom: 'somethingElse'.
		'something'
		(RemoveSuffix withAll: {'thingElse'. 'Else'}) removeSubstringsFrom: 'somethingElse'.
		'some'
	"

	   | maxSizeSuffix theRightSuffix indexOfSuffix |
	   maxSizeSuffix := 0.
	   indexOfSuffix := 0.
	   theRightSuffix := String new.
	   self collectionOfSubstrings do: [ :substring | 
		   (self class string: aString endsWith: substring caseSensitive: self caseSensitive) 
			   ifTrue: [ 
					" if a substring is the same as the string so we return an empty string "
				   (aString compare: substring caseSensitive: self caseSensitive) = 2 
					   ifTrue: [ ^ String new ]
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