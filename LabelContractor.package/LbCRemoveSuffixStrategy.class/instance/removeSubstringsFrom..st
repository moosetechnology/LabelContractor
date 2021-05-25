private
removeSubstringsFrom: aString

	"I remove the suffix(or suffixes) from a string"

	| maxSizeSuffix theRightSuffix indexOfSuffix |
	maxSizeSuffix := 0.
	indexOfSuffix := 0.
	theRightSuffix := String new.
	self collectionOfSubstrings do: [ :substring | 
		| indexSubstringAsSuffix |
		indexSubstringAsSuffix := aString size - substring size.
		(aString findString: substring startingAt: (indexSubstringAsSuffix + 1) caseSensitive: self caseSensitive) > 0 ifTrue: [ 
			substring size >= maxSizeSuffix ifTrue: [ 
				maxSizeSuffix := substring size.
				theRightSuffix := substring.
				indexOfSuffix := aString size - theRightSuffix size ] ] ].
	^ self removeSuffix: indexOfSuffix from: aString