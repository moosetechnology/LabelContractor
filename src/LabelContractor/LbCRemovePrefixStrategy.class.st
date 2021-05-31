"
Class: LbCRemovePrefixStrategy
                                                                                                    

I am RemovePrefix, and i remove a prefix or a collection of prefixes from a string .
By default, the case sensitive is not respected(you can activate it by invoking **#beCaseSensitive** method).

**Examples:**

**1 - With a single prefix:**
```Smalltalk
LbCContractor new
	removePrefix: 'hashed';
	reduce: 'HashedCollection'.  
```
returns 'Collection'

**2 - With a collection of prefixes:**
```Smalltalk
LbCContractor new
	removePrefixes: {'hashed'. 'Collection'};
	reduce: 'HashedCollection'. 
```
returns 'Collection'

**3- With case-sensitive option by using #beCaseSensitive:**
```Smalltalk
| removePrefixStrategy |
removePrefixStrategy := LbCRemovePrefixStrategy new .
removePrefixStrategy
	with: 'Hashed';
	beCaseSensitive .
	
LbCContractor new
	strategy: removePrefixStrategy;
	reduce: 'HashedCollection'.
```
returns 'Collection'

**4- if a prefix is included in another substring in the collection, so we remove the longest prefix**
```Smalltalk
LbCContractor new
	removePrefixes: {'example'. 'exampleof'} ;
	reduce: 'ExampleOfClassName'.
```
returns 'ClassName'

"
Class {
	#name : #LbCRemovePrefixStrategy,
	#superclass : #LbCRemoveSubstringsStrategy,
	#category : 'LabelContractor-Contractor'
}

{ #category : #private }
LbCRemovePrefixStrategy >> removeSubstringsFrom: aString [

	"I remove the prefix(or prefixes) from a string"
	
	| maxSizePrefix theRightPrefix |
	maxSizePrefix := 0.
	theRightPrefix := String new.
	self collectionOfSubstrings do: [ :substring | 
		(aString findString: substring startingAt: 1 caseSensitive: self caseSensitive) = 1 
			ifTrue: [ 
				substring size >= maxSizePrefix ifTrue: [ 
					maxSizePrefix := substring size.
					theRightPrefix := substring ] ] ].
	^ aString withoutPrefix: (aString copyFrom: 1 to: theRightPrefix size)
]
