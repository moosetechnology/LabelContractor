private
removeSubstringsFrom: aString

	"
	  return a string without suffix 
		>>> (RemoveSuffix with: 'Else') removeSubstringsFrom: 'somethingElse'.
		'something'
		>>> (RemoveSuffix withAll: {'some'. 'Else'}) removeSubstringsFrom: 'somethingElse'.
		'something'
		>>> (RemoveSuffix withAll: {'thingElse'. 'Else'}) removeSubstringsFrom: 'somethingElse'.
		'some'
	"

	| maxSizeSuffix theRightSuffix indexOfSuffix |
	maxSizeSuffix := (self collectionOfSubstrings at: 1) asString size.
	indexOfSuffix := 0.
	theRightSuffix := ''.
	self collectionOfSubstrings do: [ :substring | 
		| substringToString |
		substringToString := substring asString.
		(aString endsWith: substringToString caseSensitive: self caseSensitive) ifTrue: [ 
			substringToString size >= maxSizeSuffix ifTrue: [ 
				maxSizeSuffix := substringToString size.
				theRightSuffix := substringToString.
				indexOfSuffix := aString size - theRightSuffix size ] ] ].
	^ indexOfSuffix = 0
		  ifTrue: [ aString ]
		  ifFalse: [ 
			  aString withoutSuffix:
				  (aString copyFrom: indexOfSuffix + 1 to: aString size) ]