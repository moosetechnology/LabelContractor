"
I'm a tokenizer of strings.

**Example 1:**
```Smalltalk
LbCTokenizer new tokenize: '23SomethingLike33' 
```
returns #('23'. 'Something'. 'Like33') asOrdredCollection

**Example 2:**
```Smalltalk
LbCTokenizer new tokenize: 'SomethingOf43LikeOther' 
```
returns #('Something'. 'Of43'. 'Like'. 'Other')	 asOrdredCollection

**Example 3:**
```Smalltalk
LbCTokenizer new tokenize: 'DFLSomething' 
```
returns #( 'DFL'. 'Something' ) asOrderedCollection
"
Class {
	#name : #LbCTokenizer,
	#superclass : #Object,
	#category : #'LabelContractor-Tokenizer'
}

{ #category : #'private-algorithm' }
LbCTokenizer >> tokenize: aString [

	"(LbCTokenizer new tokenize: '23SomethingHer43Like33') >>> {'23'. 'Something'. 'Her43'. 'Like33'} asOrderedCollection"

	"(LbCTokenizer new tokenize: '23SomethingHer43Like33Other') >>> {'23'. 'Something'. 'Her43'. 'Like33'. 'Other'} asOrderedCollection"

	"(LbCTokenizer new tokenize: 'DFSSomething') >>> { 'DFS'. 'Something' } asOrderedCollection"

	| tokenizedString consecutiveUpperCase indexCapitalLetter beginWord |
	tokenizedString := OrderedCollection new.
	consecutiveUpperCase := 0.
	beginWord := 1.
	indexCapitalLetter := 1.
	1 to: aString size do: [ :each | 
		(aString at: each) isUppercase
			ifTrue: [ 
				" isolate the consecutive capital letters "
				consecutiveUpperCase := consecutiveUpperCase + 1.
				beginWord := each.
				consecutiveUpperCase > 1
					ifTrue: [ 
						each + 1 < aString size ifTrue: [ 
							(aString at: each + 1) isUppercase ifFalse: [ 
								tokenizedString add:
									(aString copyFrom: indexCapitalLetter to: each - 1) ] ] ]
					ifFalse: [ indexCapitalLetter := each ].
				each = aString size ifTrue: [ 
					tokenizedString add:
						(aString copyFrom: indexCapitalLetter to: each) ] ]
			ifFalse: [ 
				each + 1 <= aString size
					ifTrue: [ 
						(aString at: each + 1) isUppercase ifTrue: [ 
							tokenizedString add: (aString copyFrom: beginWord to: each) ] ]
					ifFalse: [ tokenizedString add: (aString copyFrom: beginWord to: each) ].
				consecutiveUpperCase := 0 ] ].
	^ tokenizedString
]
