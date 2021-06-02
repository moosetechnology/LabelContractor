"
I'm a picker of labels , i take the first letters of a string. 
If the string contains an extension, then we keep it(see the **Example 3**).

**By default I take the first 8 letters:** 
```Smalltalk
LbCContractor new
	pickFirstCharacters;
	reduce: 'HashedCollection'.		
```
returns 'HashedCo'

**An example to change the number of letter:**
```Smalltalk
LbCContractor new
	pickFirstCharactersUpTo: 5;
	reduce: 'HashedCollection'.		
```
returns 'Hashe'

**Example 3: reducing a string representing a filename**
```Smalltalk
LbCContractor new
	pickFirstCharacters;
	reduce: 'HashedCollection.st'.		
```
returns 'HashedCo.st'

"
Class {
	#name : #LbCPickFirstCharactersStrategy,
	#superclass : #LbCSizeReductionStrategy,
	#category : #'LabelContractor-Contractor'
}

{ #category : #accessing }
LbCPickFirstCharactersStrategy class >> priority [
	
	^ 20
]

{ #category : #'reduce-label' }
LbCPickFirstCharactersStrategy >> privateReduce: aString extension: extensionAsString [

	"Take the first letters of the string(by default i take the 8 first letters). If the suffix of the string represents an extension of a file (eg:'.txt', '.st' ...), then i keep it"

	^ self upTo >= aString size
		  ifTrue: [ aString ] "string smaller than the chosen size" 
		  ifFalse: [ 
			  | pickFirstLetters |
			  pickFirstLetters := aString copyFrom: 1 to: self upTo.
			  extensionAsString isEmpty
				  ifTrue: [ pickFirstLetters                                                ]
				  ifFalse: [ pickFirstLetters , extensionAsString ] ]
]
