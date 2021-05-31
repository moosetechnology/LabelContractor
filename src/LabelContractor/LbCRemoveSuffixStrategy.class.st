"
I am a Suffix remover, and i remove a suffix or a collection of suffixes from a string.

By default, the case sensitive is not respected(you can activate it by invoking #beCaseSensitive method).

**Examples:**

1 - with only one suffix to remove:
```Smalltalk
LbCContractor new
	removeSuffix: 'collection';
	reduce: 'HashedCollection'.		
```
returns 'Hashed'

2 - With a collection of suffixes: 
```smalltalk
LbCContractor new
	removeSuffixes: {'hashed'. 'Collection'};
	reduce: 'HashedCollection'.	
``` 
returns 'Hashed'

3- With case-sensitive option by using #beCaseSensitive:
```smalltalk
| removeSuffixStrategy |
removeSuffixStrategy := LbCRemoveSuffixStrategy new .
removeSuffixStrategy
	with: 'Collection';
	beCaseSensitive .
	
LbCContractor new
	strategy: removeSuffixStrategy;
	reduce: 'HashedCollection'.
``` 
returns 'Hashed'

4- if a Suffix is included in another substring in the collection, so we remove the longest Suffix 
```smalltalk
LbCContractor new
	removeSuffixes: {'class'. 'classname'};
	reduce: 'ExampleOfClassName'.
``` 
returns 'ExampleOf'
"
Class {
	#name : #LbCRemoveSuffixStrategy,
	#superclass : #LbCRemoveSubstringsStrategy,
	#category : 'LabelContractor-Contractor'
}

{ #category : #scripts }
LbCRemoveSuffixStrategy class >> exampleRoassal [
	
	<example>
	| contractor canvas g |
	contractor := LbCContractor new strategy: (self new withAll: { 'Storage'. 'Moose'. 'Bag'. 'Array'. 'set' }).
	
	canvas := RSCanvas new @ RSCanvasController.
	g := RSGroup new.
	g addAll: (Collection withAllSubclasses collect: [ :i | 
			RSBox new
				   model: i ]).
	   g @ (LbCContractorScript new labelInteraction: contractor).
	   canvas addAll:
		   (g copyFrom: 1 to: Collection withAllSubclasses size // 2).
	   RSGridLayout new gapSize: 200; on: g.
	   canvas open
]

{ #category : #scripts }
LbCRemoveSuffixStrategy class >> exampleSpec [
	
	<example>
	| contractor |
	contractor := LbCContractor new strategy: (self new withAll: { 'Storage'. 'Moose'. 'Bag'. 'Array' }).
	LbCContractorScript new exampleSpec: contractor
]

{ #category : #private }
LbCRemoveSuffixStrategy >> removeSubstringsFrom: aString [

	"I remove the suffix(or suffixes) from a string"

	| maxSizeSuffix theRightSuffix indexOfSuffix |
	maxSizeSuffix := 0.
	indexOfSuffix := 0.
	theRightSuffix := String new.
	self collectionOfSubstrings do: [ :substring | 
		| indexSubstringAsSuffix |
		indexSubstringAsSuffix := aString size - substring size.
		(aString findString: substring startingAt: (indexSubstringAsSuffix + 1) caseSensitive: self caseSensitive) > 0 ifTrue: [ 
			substring size >= maxSizeSuffix ifTrue: [ 
				maxSizeSuffix := substring size.
				theRightSuffix := substring.
				indexOfSuffix := aString size - theRightSuffix size ] ] ].
	^ self removeSuffix: indexOfSuffix from: aString
]

{ #category : #private }
LbCRemoveSuffixStrategy >> removeSuffix: indexOfSuffix from: aString [

	"LbCRemoveSuffixStrategy new removeSuffix: 4 from: 'something' >>> 'some'"
	"LbCRemoveSuffixStrategy new removeSuffix: 0 from: 'something' >>> 'something'"
	
	^ indexOfSuffix = 0
		  ifTrue: [ aString ]
		  ifFalse: [ aString withoutSuffix: (aString copyFrom: indexOfSuffix + 1 to: aString size) ]
]
