"
I am the strategy which takes the initial letter of each name except the last one.
By default i abbreviate only the first 3 names(you can change this value by using **#until: anInteger**) .

**Note:** The last word is never abbreviated, even if the 'until' is too big than the string(see the first example)

**instance variables:**
- tokenizer: it allows you to cut a string into several substrings 
- until: it designates the number of words for which we want to keep their first letters

**Example 1:** By default we abbreviate the first 3 names but the string in example contains only two names('Hashed' and 'Collection'), so we abbreviate only the first name (the last is always not abbreviated).
```Smalltalk
LbCContractor new
	abbreviateNames;
	reduce: 'HashedCollection'.		
```
returns 'HCollection'

**Example 2:**
```Smalltalk
LbCContractor new
	abbreviateNamesUntil: 4;
	reduce: 'AnExampleOfSomethingVeryLong'.		
```
returns 'AEOSVeryLong'



"
Class {
	#name : #LbCAbbreviateNamesStrategy,
	#superclass : #LbCAbstractStrategy,
	#instVars : [
		'tokenizer',
		'until'
	],
	#category : #'LabelContractor-Contractor'
}

{ #category : #'default values' }
LbCAbbreviateNamesStrategy class >> defaultNbWordsToAbbreviate [

	^ 3
]

{ #category : #accessing }
LbCAbbreviateNamesStrategy class >> priority [
	
	^ 10
]

{ #category : #accessing }
LbCAbbreviateNamesStrategy class >> until: aPositifInteger [
	
	^ self new until: aPositifInteger
	
]

{ #category : #splitjoin }
LbCAbbreviateNamesStrategy >> abbreviate: aString until: anInteger [
	
	"abbreviate names to their first letters except the last name."
		
	"(LbCAbbreviateNamesStrategy new abbreviate: 'AnExampleOfString' until: 3) >>> 'AEOString'"
	"(LbCAbbreviateNamesStrategy new abbreviate: 'ShortExample' until: 3) >>> 'SExample'"
	
	| tokens nameParts abbreviations |
	tokens := tokenizer tokenize: aString.
	nameParts := tokens size > anInteger 
		             ifTrue: [ self divide: tokens until: anInteger ]
		             ifFalse: [ self divide: tokens until: tokens size - 1 ].
	abbreviations := nameParts first collect: [ :aCaracter | aCaracter first asUppercase ].
	^ '' join: abbreviations , ('' join: nameParts second) 
]

{ #category : #splitjoin }
LbCAbbreviateNamesStrategy >> divide: aCollection until: aNumber [
	
	"divide the collection into two parts at the index entered as the second argument. Returns an array containing two sub-arrays representing the two divided parts."

 	"(LbCAbbreviateNamesStrategy new divide: {'DM' . 'Class' . 'Names' . 'Blueprint' . 'Test'} until: 2) >>> {{'DM' . 'Class' }. {'Names' . 'Blueprint'. 'Test'}}"
					
	| firstPartTokens secondPartTokens |
	aCollection size > aNumber ifTrue: [ 
		firstPartTokens := aCollection copyFrom: 1 to: aNumber.
		secondPartTokens := aCollection asOrderedCollection
			                    removeAllFoundIn: firstPartTokens;
			                    yourself.
		^ Array with: firstPartTokens with: secondPartTokens asArray ].
	^ aCollection
]

{ #category : #initialization }
LbCAbbreviateNamesStrategy >> initialize [

	super initialize .
	tokenizer := LbCTokenizer new.
]

{ #category : #'reduce-label' }
LbCAbbreviateNamesStrategy >> privateReduce: aString extension: anotherString [
	  
	 ^ (self abbreviate: aString until: self until), anotherString  
]

{ #category : #accessing }
LbCAbbreviateNamesStrategy >> until [
	
	^ until ifNil: [ until := self class defaultNbWordsToAbbreviate ]
]

{ #category : #accessing }
LbCAbbreviateNamesStrategy >> until: aPositifInteger [
	
	until := aPositifInteger 
]
