"
I can replace a substring with new one.


Examples:
```Smalltalk
LbCContractor new 
	substitute: 'Superclasses' by: 'Sc';
	reduce: 'ClyMergedSuperclassesAndInheritedTraitsHierarchyTest'
```
returns 'ClyMergedScAndInheritedTraitsHierarchyTest'

"
Class {
	#name : #LbCSubstituteSubstringsStrategy,
	#superclass : #LbCAbstractStrategy,
	#instVars : [
		'oldSubstring',
		'newSubstring'
	],
	#category : #'LabelContractor-Contractor'
}

{ #category : #accessing }
LbCSubstituteSubstringsStrategy class >> priority [ 

	^ 5
]

{ #category : #initialization }
LbCSubstituteSubstringsStrategy >> initialize [ 

	super initialize .
	oldSubstring := String new.
	newSubstring := String new.
]

{ #category : #accessing }
LbCSubstituteSubstringsStrategy >> newSubstring [

	^ newSubstring
]

{ #category : #accessing }
LbCSubstituteSubstringsStrategy >> oldSubstring [

	^ oldSubstring
]

{ #category : #'instance creation' }
LbCSubstituteSubstringsStrategy >> oldSubstring: anOldSubstring newSubstring: aNewSubstring [
	
	oldSubstring := anOldSubstring .
	newSubstring := aNewSubstring .  
]

{ #category : #'reduce-label' }
LbCSubstituteSubstringsStrategy >> privateReduce: aString extension: anExtension [
	
	 ^ (self substituteFrom: aString), anExtension  
]

{ #category : #'reduce-label' }
LbCSubstituteSubstringsStrategy >> substituteFrom: aString [ 
	
	"substitute all the occurences of an oldSubtring by the new substring"

	^ aString copyReplaceAll: oldSubstring with: newSubstring  
]
