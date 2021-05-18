splitjoin
devide: aCollection until: aNumber
	
	"
		divide the collection in two at the index entered as the second argument.
		
		Examples:
			LbCAbbreviateNamesStrategy new devide: {'DM' . 'Class' . 'Names' . 'Blueprint' . 'Test'} until: 2 
			-> Array
					with: {'DM' . 'Class' }
					with: {'Names' . 'Blueprint'. 'Test'}
	"
	| firstPartTokens secondPartTokens |
	aCollection size > aNumber ifTrue: [ 
		firstPartTokens := aCollection copyFrom: 1 to: aNumber.
		secondPartTokens := aCollection asOrderedCollection
			                    removeAllFoundIn: firstPartTokens;
			                    yourself.
		^ Array with: firstPartTokens with: secondPartTokens asArray ].
	^ aCollection