finding/searching
findCommonPrefix

	" 
		find the common prefix between all the strings 
		- Limit of the algo: all strings must start with the same prefix 
		
		
	"

	| minSize result current |
	result := String new.
	minSize := self class findMinLength: collectionOfString  .
	1 to: minSize do: [ :i | 
		current := collectionOfString first at: i.
		1 to: collectionOfString size do: [ :j | 
			((collectionOfString at: j) at: i) ~= current ifTrue: [ ^ result ] ].
		result := result , current asString ].
	^ result