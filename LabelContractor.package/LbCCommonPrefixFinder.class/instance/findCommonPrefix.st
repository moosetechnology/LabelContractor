finding/searching
findCommonPrefix

	" 
		find the common prefix between all the strings 
		- Limit of the algo: if one of the strings is totally different from the others, the algorithm returns an empty string(see the second example below)
		
		Examples:
			LbCCommonPrefixFinder new collectionOfString: { 'SWFirstExample'. 'SWSecondExample'. 'SWThird' } >>> 'SW'	.
			LbCCommonPrefixFinder new collectionOfString: { 'SWFirstExample'. 'SWSecondExample'. 'somethingDifferent'} >>> '' 	
	"

	| minSize result current |
	result := String new.
	minSize := self class findMinLength: collectionOfString.
	1 to: minSize do: [ :i | 
		current := collectionOfString first at: i.
		1 to: collectionOfString size do: [ :j | 
			((collectionOfString at: j) at: i) ~= current
				ifTrue: [ ^ result ]].
		result := result , current asString ].
	^ result