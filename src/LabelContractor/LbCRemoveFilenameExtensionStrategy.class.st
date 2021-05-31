"
I'm the BaseName class. I'm used to reduce labels to keep its base name

**Example 1:**
```Smalltalk
LbCContractor new
 baseName;
 reduce: 'A:path/HashedCollection.class'.  
```
returns 'HashedCollection'

**Example 2:**
```Smalltalk
LbCContractor new
 baseName;
 reduce: 'HashedCollection.class'.  
```
returns 'HashedCollection'
"
Class {
	#name : #LbCRemoveFilenameExtensionStrategy,
	#superclass : #LbCAbstractStrategy,
	#category : 'LabelContractor-Contractor'
}

{ #category : #accessing }
LbCRemoveFilenameExtensionStrategy class >> priority [
	
	^ 1
]

{ #category : #'reduce-label' }
LbCRemoveFilenameExtensionStrategy >> privateReduce: aString extension: anotherString [
	
	 ^ aString
]
