"
I am a contractor and i can contract strings using several strategies

If the string represents a fully qualified filename, by default I will remove the 'path' part before applying any strategy(if you want to keep it, you can use **#keepPath** (see Example 2) .

**Example 1: By default I remove 'path' if the string represents a fully qualified filename **
```Smalltalk
LbCContractor new
	removeSubstring: { 'Cly' . 'And' . 'Test' . 'ed' };
	reduce: 'Calypso-SystemPlugins-Traits-Queries-Tests/ClyMergedSuperclassesAndInheritedTraitsHierarchyTest'.
```
returns 'MergSuperclassesInheritTraitsHierarchy'

**Example 2: keep path if a fully qualified name by using #keepPath**
```Smalltalk
LbCContractor new
	keepPath;
	removeSubstrings: { 'Cly' . 'And' . 'Test' . 'ed' };	
	reduce: 'Calypso-SystemPlugins-Traits-Queries-Tests/ClyMergedSuperclassesAndInheritedTraitsHierarchyTest'.									
```
returns 'Calypso-SystemPlugins-Traits-Queries-Tests/MergSuperclassesInheritTraitsHierarchy'	

#Combining strategies 
##1. Combining following user-defined order
It applies the strategies one by one

**Example:**
```Smalltalk
LbCContractor new
	removePrefix: 'Cly';
	removeSuffix: 'Test';
	removeVowels;
	abbreviateNames; 
	reduce: 'ClyMergedSuperclassesAndInheritedTraitsHierarchyTest'
```
returns 'MSAInhrtdTrtsHrrch'


##2. Combining following predefined priorities
if you don't know how to order the strategies(which you have chosen) to combine them, use **#usingPriorities** to let the program order the strategies and apply them according to their priority

**Example:**
```Smalltalk
LbCContractor new
	usingPriorities;
	removePrefix: 'Cly';
	removeSuffix: 'Test';
	removeVowels;
	abbreviateNames; 
	reduce: 'ClyMergedSuperclassesAndInheritedTraitsHierarchyTest'
``` 
returns 'MSInhrtdTrtsHrrch'
"
Class {
	#name : #LbCContractor,
	#superclass : #Object,
	#instVars : [
		'collectionOfStrategy',
		'withPriorities',
		'withPath'
	],
	#category : #'LabelContractor-Contractor'
}

{ #category : #removing }
LbCContractor class >> extractPathFrom: aString [

	"for the strings representing a fully qualified name, return the 'path' part of the string"
	
	"LbCContractor extractPathFrom: 'A:example/path/file.ext' >>> 'A:example/path/'"
	"LbCContractor extractPathFrom: 'file.ext' >>> ''"

	| pathSeparetor |
	pathSeparetor := $/.
	^ aString copyFrom: 1 to: (aString lastIndexOf: pathSeparetor)
]

{ #category : #removing }
LbCContractor class >> removePathFrom: aString [

	"Remove the 'path' part of the string. If the string doesn't contain the 'path' side so i return the same string"	  
	
	"LbCContractor removePathFrom: 'A:example/path/file.ext' >>> 'file.ext'"
	"LbCContractor removePathFrom: 'file.ext' >>> 'file.ext'"
	
	^ aString copyReplaceAll: (self extractPathFrom: aString) with: '' 
]

{ #category : #convenience }
LbCContractor >> abbreviateNames [

	self addStrategy: LbCAbbreviateNamesStrategy new 
]

{ #category : #convenience }
LbCContractor >> abbreviateNamesUntil: anInteger [

	self addStrategy: (LbCAbbreviateNamesStrategy new until: anInteger)
]

{ #category : #adding }
LbCContractor >> addStrategy: aLbCStrategy [
	"Use me if you want to use the sequential combination of multiple strategies. I'm adding a strategy to an ordered collection so that i can apply the strategies one by one."
	
	collectionOfStrategy add: aLbCStrategy
]

{ #category : #accessing }
LbCContractor >> collectionOfStrategy [

	^ collectionOfStrategy
]

{ #category : #accessing }
LbCContractor >> collectionOfStrategy: aOrderedCollectionOfStrategies [

	collectionOfStrategy := aOrderedCollectionOfStrategies 
]

{ #category : #convenience }
LbCContractor >> ellipsis [

	self addStrategy: LbCEllipsisStrategy new 
]

{ #category : #convenience }
LbCContractor >> ellipsisUpTo: anInteger [

	self addStrategy: (LbCEllipsisStrategy new upTo: anInteger) 
]

{ #category : #initialization }
LbCContractor >> initialize [ 
	super initialize.
	collectionOfStrategy := OrderedCollection new.
	withPath := false.
	withPriorities := false.
	
]

{ #category : #accessing }
LbCContractor >> keepPath [

	withPath := true
]

{ #category : #convenience }
LbCContractor >> pickFirstCharacters [

	self addStrategy: LbCPickFirstCharactersStrategy new 
]

{ #category : #convenience }
LbCContractor >> pickFirstCharactersUpTo: anInteger [

	self addStrategy: (LbCPickFirstCharactersStrategy new upTo: anInteger)
]

{ #category : #'reduce-label' }
LbCContractor >> reduce: aString [
	"I reduce aString according to the choosen strategies, but first of all I remove the path if aString is a fully qualified file name"

	| stringWithNoPath |
	stringWithNoPath := self class removePathFrom: aString.
	collectionOfStrategy do: [ :each | stringWithNoPath := each reduce: stringWithNoPath ].
	^ withPath
		  ifTrue: [ (self class extractPathFrom: aString) , stringWithNoPath ]
		  ifFalse: [ stringWithNoPath ]
]

{ #category : #convenience }
LbCContractor >> removeFilenameExtension [

	self addStrategy: LbCRemoveFilenameExtensionStrategy new 
]

{ #category : #convenience }
LbCContractor >> removeFirstWord [

	self addStrategy: (LbCRemoveFirstWordStrategy new )
]

{ #category : #convenience }
LbCContractor >> removeFrequentLetters [

	self addStrategy: LbCRemoveFrequentLettersStrategy new
]

{ #category : #convenience }
LbCContractor >> removeFrequentLettersUpTo: anInteger [

	self addStrategy: (LbCRemoveFrequentLettersStrategy new upTo: anInteger) 
]

{ #category : #convenience }
LbCContractor >> removeLastWord [

	self addStrategy: (LbCRemoveLastWordStrategy new)
]

{ #category : #convenience }
LbCContractor >> removePrefix: aPrefix [

	self addStrategy: (LbCRemovePrefixStrategy new with: aPrefix)
]

{ #category : #convenience }
LbCContractor >> removePrefixes: aCollectionOfPrefix [

	self addStrategy: (LbCRemovePrefixStrategy new withAll: aCollectionOfPrefix )
]

{ #category : #convenience }
LbCContractor >> removeSubstring: aSubstring [

	self addStrategy:
		(LbCRemoveAnySubstringStrategy new with: aSubstring)
]

{ #category : #convenience }
LbCContractor >> removeSubstrings: aCollectionOfSubstring [

	self addStrategy:
		(LbCRemoveAnySubstringStrategy new withAll: aCollectionOfSubstring )
]

{ #category : #convenience }
LbCContractor >> removeSuffix: aSuffix [

	self addStrategy: (LbCRemoveSuffixStrategy new with: aSuffix)
]

{ #category : #convenience }
LbCContractor >> removeSuffixes: aCollectionOfSuffix [

	self addStrategy: (LbCRemoveSuffixStrategy new withAll: aCollectionOfSuffix)
]

{ #category : #convenience }
LbCContractor >> removeVowels [

	self addStrategy: LbCRemoveVowelsStrategy new
]

{ #category : #convenience }
LbCContractor >> removeWordAt:  anIndex [

	self addStrategy: (LbCRemoveAnyWordsAtStrategy new wordAt: anIndex)
]

{ #category : #convenience }
LbCContractor >> removeWordsAt:  aCollection [

	self addStrategy: (LbCRemoveAnyWordsAtStrategy new wordsAt: aCollection)
]

{ #category : #sorting }
LbCContractor >> sortStrategiesByPriority [

	"sorting the collection of strategies by its priority. So the first item is the highest priority strategy and the last item is the lowest priority strategy"
	
	self collectionOfStrategy:
		(collectionOfStrategy asSortedCollection: [ :firstStrategy :secondStrategy | 
			 firstStrategy class priority < secondStrategy class priority ])
]

{ #category : #accessing }
LbCContractor >> strategy: aLbCStrategy [

	"use me if you want to use only one strategy"

	collectionOfStrategy := OrderedCollection new
		                        add: aLbCStrategy;
		                        yourself
]

{ #category : #convenience }
LbCContractor >> substitute: anOldSubstring by: aNewSubstring [

	self addStrategy: (LbCSubstituteSubstringsStrategy new
			 oldSubstring: anOldSubstring
			 newSubstring: aNewSubstring)
]

{ #category : #accessing }
LbCContractor >> usingPriorities [

	"This option allows you to apply the strategies in their order of priority(already set) and not in order set by the user"

	withPriorities := true.
	self sortStrategiesByPriority 
]
