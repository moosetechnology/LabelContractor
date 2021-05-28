private
keepIndexesThatAreInTheBoundOf: arraySize
	
	"remove indexes that exceed the array size provided for the tokenizer"
	
	| filteredIndexes |
	filteredIndexes := indexes deepCopy.
	(filteredIndexes anySatisfy: [ :e | e > arraySize ] )
		ifTrue: [ filteredIndexes removeAllSuchThat: [:e | e > arraySize ]].
	^ filteredIndexes 	