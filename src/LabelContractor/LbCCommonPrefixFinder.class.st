"
I am a finder of common prefix from a collection of substrings. 
I can find the common prefix but my algorithm has limits: the collection must contain substrings starting with the same prefix, if one of the substrings is totally different from the others then I could not deduce the common prefix.

Example:

```Smalltalk
LbCCommonPrefixFinder new 
	collectionOfString: {'anExample' . 'anOtherExample'};
	findCommonPrefix.  
```
returns 'an'  
"
Class {
	#name : #LbCCommonPrefixFinder,
	#superclass : #Object,
	#instVars : [
		'collectionOfString'
	],
	#category : #'LabelContractor-Helper'
}

{ #category : #private }
LbCCommonPrefixFinder class >> findMinLength: aCollectionOfString [
	"find the string having the minimum length and returns that length"

	| min |
	min := aCollectionOfString first size.
	aCollectionOfString do: [ :each | 
		min := min min: each size ].
	^ min
]

{ #category : #accessing }
LbCCommonPrefixFinder >> addAStringToCollection: aString [

	collectionOfString add: aString
	
]

{ #category : #accessing }
LbCCommonPrefixFinder >> collectionOfString: aCollectionOfString [

	collectionOfString := aCollectionOfString asOrderedCollection 
	
]

{ #category : #'finding/searching' }
LbCCommonPrefixFinder >> findCommonPrefix [
	"Find the common prefix between all the strings.
	Limit of the algo: cannot find the common prefix if only a majority of the strings contain the same prefix(see second example)."

	"(LbCCommonPrefixFinder new collectionOfString: { 'SWFirstExample'. 'SWSecondExample'. 'SWThird' }) findCommonPrefix >>> 'SW'"

	"(LbCCommonPrefixFinder new collectionOfString: { 'SWFirstExample'. 'SWSecondExample'. 'somethingDifferent'}) findCommonPrefix >>> ''"

	| minSize result current |
	result := String new.
	minSize := self class findMinLength: collectionOfString.
	1 to: minSize do: [ :i | 
		current := collectionOfString first at: i.
		1 to: collectionOfString size do: [ :j | 
			((collectionOfString at: j) at: i) ~= current ifTrue: [ ^ result ] ].
		result := result , current asString ].
	^ result
]

{ #category : #initialization }
LbCCommonPrefixFinder >> initialize [ 
	super initialize.
	collectionOfString := OrderedCollection new.
	
]
