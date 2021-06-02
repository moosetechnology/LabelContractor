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
LbCRemoveVowelsStrategy class >> addIndexes: listOfIndexes WhenAStringContainsVowels: aString startingAt: index [

	^ index = aString size
		  ifTrue: [ listOfIndexes add: index ]
		  ifFalse: [ 
			  ((self isConsonant: (aString at: index - 1)) and:
				   (self isConsonant: (aString at: index + 1))) ifTrue: [ 
				  listOfIndexes add: index ] ]
]

{ #category : #private }
LbCRemoveVowelsStrategy class >> getIndexesOfTheLetterYAsAVowelFrom: aString [

	"returns a list of indexes of the 'y' which are vowels in the string.
	 Examples:	
		getIndexesOfTheLetterYAsAVowelFrom: 'mystery' (it returns #(2 7) asOrderedCollection ).
		getIndexesOfTheLetterYAsAVowelFrom: 'year' (it returns OrderedCollection empty (in this case, 'y' is a consonant and not a vowel ))"

	| vowel listOfIndexes |
	vowel := $y.
	listOfIndexes := OrderedCollection new.
	1 to: aString size do: [ :index | 
		((aString at: index) asLowercase = vowel and: index > 1) ifTrue: [ 
			(self noVowelIn: aString)
				ifTrue: [ listOfIndexes add: index ]
				ifFalse: [ self addIndexes: listOfIndexes WhenAStringContainsVowels: aString startingAt: index ] ] ].
	^ listOfIndexes
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
