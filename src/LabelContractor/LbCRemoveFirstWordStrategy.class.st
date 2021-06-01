"
I remove the first word of a string

**Example:**
```Smalltalk
LbCContractor new
	strategy: LbCRemoveFirstWordStrategy new;
	reduce: 'FamixMooseQueryGenerator'
```
returns 'MooseQueryGenerator'
"
Class {
	#name : #LbCRemoveFirstWordStrategy,
	#superclass : #LbCRemoveWordsAtStrategy,
	#category : #'LabelContractor-Contractor'
}

{ #category : #removing }
LbCRemoveFirstWordStrategy >> removeWordsFrom: arrayOfSusbtrings [

	^ arrayOfSusbtrings copyFrom: 2 to: arrayOfSusbtrings size 
]
