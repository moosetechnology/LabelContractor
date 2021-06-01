"
I remove the last word of a string

Example:
```Smalltalk
LbCContractor new
 strategy: LbCRemoveLastWordStrategy new;
 reduce: 'FAMIXAnnotationInstanceAttributeTest'
```
returns 'FAMIXAnnotationInstanceAttribute'
"
Class {
	#name : #LbCRemoveLastWordStrategy,
	#superclass : #LbCRemoveWordsAtStrategy,
	#category : #'LabelContractor-Contractor'
}

{ #category : #removing }
LbCRemoveLastWordStrategy >> removeWordsFrom: arrayOfSusbtrings [

	^ arrayOfSusbtrings copyUpToLast: arrayOfSusbtrings last 
]
