private
findMinLength: aCollectionOfString
	"find the string having the minimum length and returns that length"

	| min |
	min := aCollectionOfString first size.
	aCollectionOfString do: [ :each | 
		min := min min: each size ].
	^ min