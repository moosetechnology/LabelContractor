"
I am a family of strategy which allows removing one or a group of words by specifying their indexes. 
My subclasses define how they remove the words.
"
Class {
	#name : #LbCRemoveWordsAtStrategy,
	#superclass : #LbCAbstractStrategy,
	#instVars : [
		'tokenizer',
		'indexes'
	],
	#category : #'LabelContractor-Contractor'
}

{ #category : #accessing }
LbCRemoveWordsAtStrategy class >> priority [
	
	^ 5 
]

{ #category : #initialization }
LbCRemoveWordsAtStrategy >> initialize [ 

	super initialize .
	tokenizer := LbCTokenizer new.
	indexes := SortedCollection new.
]

{ #category : #'reduce-label' }
LbCRemoveWordsAtStrategy >> privateReduce: aString extension: anExtension [

	"i use the tokenizer to split the string into several words, and then i remove the words specified by its indexes. If I have only one name to reduce after tokenization, the name is not removed, and I return it."

	| tokenizedString removedWords |
	tokenizedString := tokenizer tokenize: aString.
	removedWords := tokenizedString size <= 1 
		                ifTrue: [ tokenizedString ] 
		                ifFalse: [ self removeWordsFrom: tokenizedString ].
	^ ('' join: removedWords) , anExtension
]

{ #category : #removing }
LbCRemoveWordsAtStrategy >> removeWordsFrom: arrayOfSusbtrings [
	
	"remove words from the array of tokenized words 'arraOfSubstring'"
	
	^ self subclassResponsibility 
]
