"
I'm an abstract strategy and my subclasses can define the way to reduce a label(or generally a string).

Whatever the strategy, the common method used to reduce a label(or generally a string) is **#reduce:**
"
Class {
	#name : #LbCAbstractStrategy,
	#superclass : #Object,
	#category : 'LabelContractor-Contractor'
}

{ #category : #public }
LbCAbstractStrategy class >> extensionDelimiter [

	^ $.
]

{ #category : #private }
LbCAbstractStrategy class >> extractExtensionsFrom: aString [

	"if the string represents a filename so we return its extension."
		
	"LbCAbstractStrategy extractExtensionsFrom: 'file.tar' >>> #('tar')"	
	"LbCAbstractStrategy extractExtensionsFrom: 'file.tar.gz' >>> #('tar' 'gz')"	
		
	| extractedExtensions |
	extractedExtensions := (self extensionDelimiter split: aString) allButFirst.
	^  extractedExtensions asOrderedCollection removeAllSuchThat: [ :each | each isEmpty ]
]

{ #category : #testing }
LbCAbstractStrategy class >> isAbstract [ 
	
	^ self == LbCAbstractStrategy  
]

{ #category : #private }
LbCAbstractStrategy class >> joinExtractedExtensions: anOrderedCollectionOfExtensions [
	
	"LbCAbstractStrategy joinExtractedExtensions: #('tar' 'gz') asOrderedCollection >>> '.tar.gz'"
	"LbCAbstractStrategy joinExtractedExtensions: #('tar') asOrderedCollection >>> '.tar'"
	
	^ anOrderedCollectionOfExtensions isEmpty
		  ifTrue: [ String new ]
		  ifFalse: [ 
			  (self extensionDelimiter join: anOrderedCollectionOfExtensions) 
				  copyWithFirst: self extensionDelimiter ]
]

{ #category : #private }
LbCAbstractStrategy class >> removeExtension: anExtension from: aString [

	"Remove an extension from a string. If the string doesn't include anExtension, so we return the same string."
	
	"LbCAbstractStrategy removeExtension: 'txt' from: 'something.txt' >>> 'something'"
	
	| extensionWithDelimiter |
	extensionWithDelimiter := anExtension copyWithFirst: self extensionDelimiter.
	^ aString withoutSuffix: extensionWithDelimiter 
]

{ #category : #private }
LbCAbstractStrategy class >> removeExtensionsFrom: aString [

	"Remove all the extensions from a string."
	
	"LbCAbstractStrategy removeExtensionsFrom: 'something.txt' >>> 'something'"
	"LbCAbstractStrategy removeExtensionsFrom: 'something.tar.gz' >>> 'something'"
	"LbCAbstractStrategy removeExtensionsFrom: 'something' >>> 'something' "

	| string extractExtensions  |
	string := aString.
	extractExtensions := (self extractExtensionsFrom: string) reversed.	
	extractExtensions do: [ :each | string := self removeExtension: each from: string ].
	^ string 
]

{ #category : #private }
LbCAbstractStrategy class >> removeExtensionsFrom: aString howMany: aPositiveInteger [

	"LbCAbstractStrategy removeExtensionsFrom: 'something.tar.gz' howMany: 1  >>> 'something.tar'"
	"LbCAbstractStrategy removeExtensionsFrom: 'something.txt.gz' howMany: 2 >>> 'something'"

	| string extractExtensions |
	string := aString.
	extractExtensions := (self extractExtensionsFrom: string) reversed.
	^ aPositiveInteger > extractExtensions size
		  ifTrue: [ self removeExtensionsFrom: string ]
		  ifFalse: [ 
			  (extractExtensions copyFrom: 1 to: aPositiveInteger) do: [ :each | 
				  string := self removeExtension: each from: string ].
				string ]
]

{ #category : #'reduce-label' }
LbCAbstractStrategy >> privateReduce: aString extension: anExtension [
	
	 ^ self subclassResponsibility 
]

{ #category : #'reduce-label' }
LbCAbstractStrategy >> reduce: aString [

	"I am a template method, and i can reduce a string. If the string aString represents a filename, then i will isolate the file extension and the reduction is applied only on the basename."
	
	| getExtension |
	aString isEmpty ifTrue: [ ^ aString ]. 
	getExtension := self class joinExtractedExtensions: (self class extractExtensionsFrom: aString).
	^ self reduce: aString extension: getExtension 

]

{ #category : #'reduce-label' }
LbCAbstractStrategy >> reduce: aString extension: anExtension [

	"Use me if aString contains more than one extension and you want to specify it. Otherwise, use #reduce: to let the program deduce itself the extension. My role is to reduce a string 'aString' by keeping the specified extension 'anExtension'. "
	
	| stringWithNoExtension |
	aString isEmpty ifTrue: [ ^ aString ]. 
	stringWithNoExtension := self class removeExtensionsFrom: aString.
	^ self privateReduce: stringWithNoExtension extension: anExtension.

]
