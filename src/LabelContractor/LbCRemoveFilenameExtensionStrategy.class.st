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

{ #category : #examples }
LbCRemoveFilenameExtensionStrategy class >> exampleRoassal [

	   <example>
	   | strategy specificCollection canvas g |
	   strategy := LbCContractor new strategy: self new.

	   specificCollection := OrderedCollection new.
	   specificCollection add: 'A:unix_user/projet/ExampleClass.txt'.
	   specificCollection add: 'somethingElse.txt'.

	   canvas := RSCanvas new @ RSCanvasController.
	   g := RSGroup new.
	   g addAll: (specificCollection collect: [ :i | 
			    RSBox new
				    model: i]).
	   g @ (RSLabeled new text: [ :m | strategy reduce: m ]).
	   canvas addAll: g.
	   RSGridLayout new
		   gapSize: 150;
		   on: g.
	   canvas open
]

{ #category : #accessing }
LbCRemoveFilenameExtensionStrategy class >> priority [
	
	^ 1
]

{ #category : #'reduce-label' }
LbCRemoveFilenameExtensionStrategy >> privateReduce: aString extension: anotherString [
	
	 ^ aString
]
