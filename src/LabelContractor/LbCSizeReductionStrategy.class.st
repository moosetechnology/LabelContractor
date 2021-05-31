"
I am a family of strategy which reduces labels to a certain size and my subclasses should use the **#upto:** method which designates how long we want to reduce a label (or generally a string). 
"
Class {
	#name : #LbCSizeReductionStrategy,
	#superclass : #LbCAbstractStrategy,
	#instVars : [
		'upTo'
	],
	#category : 'LabelContractor-Contractor'
}

{ #category : #'default-length' }
LbCSizeReductionStrategy class >> defaultLength [

	^ 8
]

{ #category : #testing }
LbCSizeReductionStrategy class >> isAbstract [ 
	
	^ self == LbCSizeReductionStrategy   
]

{ #category : #accessing }
LbCSizeReductionStrategy class >> upTo: anInteger [

	^ self new upTo: anInteger
]

{ #category : #'reduce-label' }
LbCSizeReductionStrategy >> privateReduce: aString extension: anotherString [
	
	 ^ self subclassResponsibility
]

{ #category : #'reduce-label' }
LbCSizeReductionStrategy >> reduce: aString [

		self upTo < 1 ifTrue: [ ^ String empty ]. 
		^ super reduce: aString
]

{ #category : #accessing }
LbCSizeReductionStrategy >> upTo [

	^ upTo ifNil: [ upTo := self class defaultLength ]
]

{ #category : #accessing }
LbCSizeReductionStrategy >> upTo: anInteger [

	upTo := anInteger isInteger
		        ifTrue: [ anInteger max: 0 ]
		        ifFalse: [ 0 ] "if the type of 'anInteger' isn't an integer so we set the 'upTo' to zero. 
		                        That's mean we will not reduce the string, and an empty string will be returned"
]
