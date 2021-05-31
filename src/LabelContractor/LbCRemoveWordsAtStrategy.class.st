"
I can remove a word or words specified by its indexes 

More details and examples are comming ...
"
Class {
	#name : #LbCRemoveWordsAtStrategy,
	#superclass : #LbCAbstractStrategy,
	#instVars : [
		'tokenizer',
		'indexes'
	],
	#category : 'LabelContractor-Contractor'
}

{ #category : #accessing }
LbCRemoveWordsAtStrategy class >> priority [
	
	^ 5 
]

{ #category : #initialization }
LbCRemoveWordsAtStrategy >> initialize [ 

	super initialize .
	tokenizer := LbCTokenizer new.
	indexes := SortedCollection new.
]

{ #category : #private }
LbCRemoveWordsAtStrategy >> keepIndexesThatAreInTheBoundOf: arraySize [
	
	"remove indexes that exceed the array size provided for the tokenizer"
	
	| filteredIndexes |
	filteredIndexes := indexes deepCopy.
	(filteredIndexes anySatisfy: [ :e | e > arraySize ] )
		ifTrue: [ filteredIndexes removeAllSuchThat: [:e | e > arraySize ]].
	^ filteredIndexes 	
]

{ #category : #'reduce-label' }
LbCRemoveWordsAtStrategy >> privateReduce: aString extension: anExtension [

	| tokenizedString wordsToRemove withoutWords filteredIndexes |
	tokenizedString := tokenizer tokenize: aString.
	filteredIndexes := self keepIndexesThatAreInTheBoundOf: tokenizedString size.
	wordsToRemove := filteredIndexes collect: [ :e | tokenizedString at: e ].
	withoutWords := tokenizedString copyWithoutAll: wordsToRemove.
	^ ('' join: withoutWords), anExtension  
]

{ #category : #accessing }
LbCRemoveWordsAtStrategy >> wordAt: anInteger [
	
	indexes add: anInteger.
]

{ #category : #accessing }
LbCRemoveWordsAtStrategy >> wordsAt: aCollectionOfIntegers [

	indexes := aCollectionOfIntegers asSortedCollection
]
