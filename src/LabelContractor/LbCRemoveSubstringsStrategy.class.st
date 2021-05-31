"
I am a remover of substrings from a string. 

By default, the case sensitive is not respected, and to activate it you must use #beCaseSensitive
"
Class {
	#name : #LbCRemoveSubstringsStrategy,
	#superclass : #LbCAbstractStrategy,
	#instVars : [
		'caseSensitive',
		'collectionOfSubstrings'
	],
	#category : 'LabelContractor-Contractor'
}

{ #category : #testing }
LbCRemoveSubstringsStrategy class >> isAbstract [ 
	
	^ self == LbCRemoveSubstringsStrategy  
]

{ #category : #accessing }
LbCRemoveSubstringsStrategy class >> priority [ 

	^ 5
]

{ #category : #accessing }
LbCRemoveSubstringsStrategy >> beCaseSensitive [

	caseSensitive := true 
]

{ #category : #accessing }
LbCRemoveSubstringsStrategy >> caseSensitive [

	^ caseSensitive
]

{ #category : #accessing }
LbCRemoveSubstringsStrategy >> collectionOfSubstrings [

	^ collectionOfSubstrings
]

{ #category : #accessing }
LbCRemoveSubstringsStrategy >> collectionOfSubstrings: aString [

	collectionOfSubstrings := aString
]

{ #category : #initialization }
LbCRemoveSubstringsStrategy >> initialize [

	super initialize.
	caseSensitive := false.
	collectionOfSubstrings := {}
]

{ #category : #'reduce-label' }
LbCRemoveSubstringsStrategy >> privateReduce: aString extension: extensionAsString [
	
	"I am a template method and i remove the substrings of a string according to the strategy chosen"
	
	^ self collectionOfSubstrings isEmpty
		  ifTrue: [ aString , extensionAsString ]
		  ifFalse: [ 
			  | reducedString |
			  reducedString := self removeSubstringsFrom: aString, extensionAsString.
			  " if after the reduction i get an empty string then i have to return the original string (because we lose the information) "
			  reducedString isEmpty
				  ifTrue: [ aString , extensionAsString ]
				  ifFalse: [ reducedString ] ]
]

{ #category : #private }
LbCRemoveSubstringsStrategy >> removeSubstringsFrom: aString [
	
	^ self subclassResponsibility 
	
	
]

{ #category : #'instance creation' }
LbCRemoveSubstringsStrategy >> with: aString [
	
	"use me if you want to remove only one substring"
	
	^ self withAll: { aString }
]

{ #category : #'instance creation' }
LbCRemoveSubstringsStrategy >> withAll: aCollectionOfSubstrings [
	
	"use me if you want to remove more than one subtring"
	
	^ aCollectionOfSubstrings isString
		  ifTrue: [ ^ self with: aCollectionOfSubstrings ]
		  ifFalse: [ ^ self collectionOfSubstrings: aCollectionOfSubstrings  ]
]
