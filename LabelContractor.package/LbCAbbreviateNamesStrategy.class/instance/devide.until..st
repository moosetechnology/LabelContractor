splitjoin
devide: aCollection until: aNumber
	
	"divide the collection into two parts at the index entered as the second argument.
	 Returns an array containing two sub-arrays representing the two divided parts.
	 Example:
			LbCAbbreviateNamesStrategy new devide: {'DM' . 'Class' . 'Names' . 'Blueprint' . 'Test'} until: 2 
			returns: {{'DM' . 'Class' }. {'Names' . 'Blueprint'. 'Test'}}"
					
	| firstPartTokens secondPartTokens |
	aCollection size > aNumber ifTrue: [ 
		firstPartTokens := aCollection copyFrom: 1 to: aNumber.
		secondPartTokens := aCollection asOrderedCollection
			                    removeAllFoundIn: firstPartTokens;
			                    yourself.
		^ Array with: firstPartTokens with: secondPartTokens asArray ].
	^ aCollection