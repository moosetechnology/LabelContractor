private
findMinLength: aCollectionOfString
	"Find the string having the minimum length and returns that length"

	| min |
	min := aCollectionOfString first size.
	1 to: aCollectionOfString size do: [ :i | 
		min := min min: (aCollectionOfString at: i) size ].
	^ min