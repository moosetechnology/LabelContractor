finding/searching
removeCommonPrefix

	" 
		remove the common prefix from all the strings 
	"
	
	| newCollection commonPrefix |
	newCollection := OrderedCollection new.
	commonPrefix := self findCommonPrefix .
	self collectionOfString do: [ :each | 
		newCollection add: (removePrefixStrategy with: commonPrefix; reduce: each) ].
	^ newCollection 
	