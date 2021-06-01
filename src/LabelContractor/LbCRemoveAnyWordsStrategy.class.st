"
I can remove a word or words specified by its indexes

**Example: remove only a word**
```Smalltalk
LbCContractor new
 removeWordAt: 4;
 reduce: 'LbCRemoveFilenameExtensionStrategy'
```
returns 'AnExampleOfVeryLongToRead'

**Example: remove words specified by an interval of indexes**
```Smalltalk
LbCContractor new
 removeWordsAt: (1 to: 3);
 reduce: 'LbCRemoveFilenameExtensionStrategy'
```
returns 'FilenameExtensionStrategy'

**Example: remove words specified by its indexes**
```Smalltalk
LbCContractor new
 removeWordsAt: #(1 2 4);
 reduce: 'LbCRemoveFilenameExtensionStrategy'
```
returns 'RemoveExtensionStrategy'
"
Class {
	#name : #LbCRemoveAnyWordsStrategy,
	#superclass : #LbCRemoveWordsAtStrategy,
	#category : #'LabelContractor-Contractor'
}

{ #category : #private }
LbCRemoveAnyWordsStrategy >> keepIndexesThatAreInTheBoundOf: arraySize [
	
	"remove indexes that exceed the array size provided for the tokenizer. All the integers bigger than the array size will not be considered, and I will remove only those representing the existing indexes of the words."
	
	| filteredIndexes |
	filteredIndexes := indexes deepCopy.
	(filteredIndexes anySatisfy: [ :each | each > arraySize ] )
		ifTrue: [ filteredIndexes removeAllSuchThat: [:each | each > arraySize ]].
	^ filteredIndexes 	
]

{ #category : #removing }
LbCRemoveAnyWordsStrategy >> removeWordsFrom: arrayOfSubstrings [

	| filteredIndexes wordsToRemove removedWords |
	filteredIndexes := self keepIndexesThatAreInTheBoundOf: arrayOfSubstrings size.
	wordsToRemove := filteredIndexes collect: [ :each | arrayOfSubstrings at: each ].
	removedWords := arrayOfSubstrings copyWithoutAll: wordsToRemove.
	^ removedWords isEmpty
		  ifTrue: [ arrayOfSubstrings ]
		  ifFalse: [ removedWords ]
]

{ #category : #accessing }
LbCRemoveAnyWordsStrategy >> wordAt: anInteger [
	
	indexes add: anInteger.
]

{ #category : #accessing }
LbCRemoveAnyWordsStrategy >> wordsAt: aCollectionOfIntegers [

	indexes := aCollectionOfIntegers asSortedCollection
]
