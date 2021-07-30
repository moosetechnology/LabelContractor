"
I am a remover of vowels from a string, and i remove all the vowels from a string(The first letter is always kept whether it is a vowel or a consonant).

**Note:** the letter 'y' sometimes is a vowel or a consonant, so we remove it only if it represents a vowel(according to the rules of grammar of the language).

**Example 1:**
```Smalltalk
LbCContractor new
	removeVowels;
	reduce: 'HashedCollection'.		
```
returns 'HshdCllctn'

**Example 2:**
```Smalltalk
LbCContractor new
	removeVowels;
	reduce: 'OrderedCollection'.		
```
returns 'OrdrdCllctn'



 
"
Class {
	#name : #LbCRemoveVowelsStrategy,
	#superclass : #LbCAbstractStrategy,
	#instVars : [
		'tokenizer'
	],
	#category : #'LabelContractor-Contractor'
}

{ #category : #private }
LbCRemoveVowelsStrategy class >> findYAsAVowelFrom: aString [

	"returns a list of indexes of the 'y' which are vowels in the string. The grammary rules are taken from https://www.woodwardenglish.com/letter-y-vowel-or-consonant/"
	
	"LbCRemoveVowelsStrategy findYAsAVowelFrom: 'mystery' >>> #(2 7) asOrderedCollection"
	"LbCRemoveVowelsStrategy findYAsAVowelFrom: 'layer' >>> OrderedCollection empty" 
	"LbCRemoveVowelsStrategy findYAsAVowelFrom: 'year' >>> OrderedCollection empty"

	| listOfIndexes |
	listOfIndexes := OrderedCollection new.
	listOfIndexes 
		addAll: (self whenThereIsNoOtherVowelFrom: aString);
		addAll: (self whenYIsAtTheEndOf: aString);
		addAll: (self whenYIsBetweenTwoConsonant: aString).
	^ listOfIndexes sort
]

{ #category : #private }
LbCRemoveVowelsStrategy class >> isConsonant: character [

	^ character isLetter and: (character isVowel not) 
]

{ #category : #private }
LbCRemoveVowelsStrategy class >> noVowelIn: aString [

	"Return true if the string doesn't contain any vowel('aeiou'). Otherwise, return false."

	^ aString noneSatisfy: [ :each | each isVowel ]
]

{ #category : #accessing }
LbCRemoveVowelsStrategy class >> priority [
	
	^ 15
]

{ #category : #private }
LbCRemoveVowelsStrategy class >> removeYVowelFrom: aString [

	"remove all the letter 'y' which represent a vowel from a string"

	"LbCRemoveVowelsStrategy removeYVowelFrom: 'mystery' >>> 'mster'"
	"LbCRemoveVowelsStrategy removeYVowelFrom: 'yellow' >>> 'yellow'" "(because the 'y' is a consonant more than a vowel)"

	| indexesOfYVowel string |
	string := aString.
	indexesOfYVowel := self getIndexesOfTheLetterYAsAVowelFrom: string.
	^ indexesOfYVowel isEmpty
		  ifTrue: [ aString ]
		  ifFalse: [ 
			  | index |
			  index := indexesOfYVowel at: 1.
			  [ indexesOfYVowel isNotEmpty ] whileTrue: [ 
				  string := string copyReplaceFrom: index to: index with: ''.
				  indexesOfYVowel := self getIndexesOfTheLetterYAsAVowelFrom: string.
				  index := indexesOfYVowel at: 1 ifAbsent: [ index := 0 ] ].
			  string ]
]

{ #category : #private }
LbCRemoveVowelsStrategy class >> whenThereIsNoOtherVowelFrom: aString [
	
	"The grammary rules are taken from https://www.woodwardenglish.com/letter-y-vowel-or-consonant/"
	
	| listOfIndexes vowel |
	listOfIndexes := OrderedCollection new.
	vowel := $y.
	(self noVowelIn: aString) ifTrue: [ 
		2 to: aString size do: [ :i | 
		(aString at: i) = vowel ifTrue: [ listOfIndexes add: i ] ] ].
	^ listOfIndexes
]

{ #category : #private }
LbCRemoveVowelsStrategy class >> whenYIsAtTheEndOf: aString [
	
	"The grammary rules are taken from https://www.woodwardenglish.com/letter-y-vowel-or-consonant/"
	
	| listOfIndexes vowel |
	listOfIndexes := OrderedCollection new.
	vowel := $y.
	(aString last) asLowercase = vowel ifTrue: [ 
			listOfIndexes add: aString size ] .
	^ listOfIndexes
]

{ #category : #private }
LbCRemoveVowelsStrategy class >> whenYIsBetweenTwoConsonant: aString [

	"The grammary rules are taken from https://www.woodwardenglish.com/letter-y-vowel-or-consonant/"
	
	| vowel listOfIndexes |
	vowel := $y.
	listOfIndexes := OrderedCollection new.
	2 to: aString size - 1 do: [ :i | 
		| previousCharacter nextCharacter |
		previousCharacter := aString at: i - 1.
		nextCharacter := aString at: i + 1.
		(aString at: i) asLowercase = vowel ifTrue: [ 
			((self isConsonant: previousCharacter) and:
				 (self isConsonant: nextCharacter)) ifTrue: [ 
				listOfIndexes add: i ] ] ].
	^ listOfIndexes
]

{ #category : #initialization }
LbCRemoveVowelsStrategy >> initialize [ 

	super initialize .
	tokenizer := LbCTokenizer new.
]

{ #category : #'private-algorithm' }
LbCRemoveVowelsStrategy >> keepFirstLetter: string [

	"i keep the first letter of the string to make the reduction more understandable. Therefore, i return the rest of the string from index 2."

	^ string copyFrom: 2 to: string size
]

{ #category : #'reduce-label' }
LbCRemoveVowelsStrategy >> privateReduce: aString extension: extensionAsString [

	"i remove vowels from a string after having tokenized it"
	
	| toknizeString filteredWords|
	toknizeString := tokenizer tokenize: aString.
	filteredWords := self removeVowelsOnEachStringFrom: toknizeString.
	^ '' join: filteredWords, extensionAsString  
	
	
	
	
]

{ #category : #'private-algorithm' }
LbCRemoveVowelsStrategy >> removeVowelsFrom: string [

	"Remove vowels from a string. The first letter is always kept whether it is a vowel or a consonant"

	"LbCRemoveVowelsStrategy new removeVowelsFrom: 'Something' >>> 'smthng'"
	"LbCRemoveVowelsStrategy new removeVowelsFrom: 'other' >>> 'othr'"

	| stringWithoutFirstLetter |
	stringWithoutFirstLetter := self keepFirstLetter: (self class removeYVowelFrom: string).
	^ (string at: 1) asString, (stringWithoutFirstLetter reject: #isVowel)
]

{ #category : #'private-algorithm' }
LbCRemoveVowelsStrategy >> removeVowelsOnEachStringFrom: aCollectionOfWords [

	"Remove the vowels from each string in the collection. Note that the 1st letter of each string in the collection is kept even if it is a vowel.			
	 Example:
		LbCRemoveVowelsStrategy new removeVowelsOnEachStringFrom: ({'Of' . 'Some' . 'In'} asOrderedCollection) .
		returns: {'Of'. Sm'. 'In'} asOrderedCollection"

	| collectionOfStringsWithoutVowels stringWithoutVowels |	
	collectionOfStringsWithoutVowels := OrderedCollection new.
	aCollectionOfWords do: [ :each | 
		stringWithoutVowels := self removeVowelsFrom: each.
		collectionOfStringsWithoutVowels add: stringWithoutVowels.
		stringWithoutVowels := String new ].
	^ collectionOfStringsWithoutVowels
]
