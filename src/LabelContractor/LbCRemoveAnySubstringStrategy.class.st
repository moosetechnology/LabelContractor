"
I am a remover of any substring from a string, and i can take a subtring or a collection of substrings.

I remove all the substrings from the string; by default there's no case sensitive

By default, there's no case-sensitive

**Example 1 with only one substring to remove:**
```Smalltalk
LbCContractor new
	removeSubstring: 'hashed';
	reduce: 'HashedCollection'.		
```
returns 'Collection'

**Example 2 with a collection of substrings**
```Smalltalk
LbCContractor new
	removeSubstrings: {'hashed'. 'Tion'};
	reduce: 'HashedCollection'.		
```
returns 'Collec'

**Example 3 with case-sensitive option by using #beCaseSensitive **
```Smalltalk
| removeAnySubstringsStrategy |
removeAnySubstringsStrategy := LbCRemoveAnySubstringStrategy new .
removeAnySubstringsStrategy	
	with: 'Hashed';
	beCaseSensitive.
	
LbCContractor new
	strategy: removeAnySubstringsStrategy;
	reduce: 'HashedCollection'.		
```
returns 'Collection'


"
Class {
	#name : #LbCRemoveAnySubstringStrategy,
	#superclass : #LbCRemoveSubstringsStrategy,
	#category : 'LabelContractor-Contractor'
}

{ #category : #scripts }
LbCRemoveAnySubstringStrategy class >> exampleRoassal [
	
	<example>
	| contractor |
	contractor := LbCContractor new strategy: (self new withAll: { 'Hashed'. 'Moose'. 'value'. 'Identity' }) .
	LbCContractorScript new exampleRoassal: contractor
]

{ #category : #scripts }
LbCRemoveAnySubstringStrategy class >> exampleSpec [
	
	<example>
	| contractor |
	contractor := LbCContractor new strategy: (self new withAll: { 'Hashed'. 'Moose'. 'value'. 'Identity' }).
	LbCContractorScript new exampleSpec: contractor
]

{ #category : #private }
LbCRemoveAnySubstringStrategy >> removeSubstring: aSubstring from: aString caseSensitive: bool [

	"I remove all occurrences of substring from the string, respecting the case sensitive"

	^ bool
		  ifTrue: [ aString copyReplaceAll: aSubstring asString with: '' ]
		  ifFalse: [ 
			  | string indexSubstring substringToRemove |
			  string := aString.
			  indexSubstring := string findString: aSubstring startingAt: 1 caseSensitive: false.
			  [ indexSubstring > 0 ] whileTrue: [ 
				  substringToRemove := string copyFrom: indexSubstring to: (indexSubstring + aSubstring size - 1).
				  string := string copyReplaceAll: substringToRemove with: ''.
				  indexSubstring := string findString: aSubstring startingAt: 1 caseSensitive: false ].
			  string ]
]

{ #category : #private }
LbCRemoveAnySubstringStrategy >> removeSubstringsFrom: aString [

	"remove all the substrings from the string"

	"(LbCRemoveAnySubstringStrategy with: 'some') removeSubstringsFrom: 'somethingOrsomeThingElse' >>> 'thingOrThingElse'"
	"(LbCRemoveAnySubstringStrategy withAll: {'some'. 'thing'}) removeSubstringsFrom: 'somethingOrSomeTHINGElse' >>> 'OrElse'"
	"(LbCRemoveAnySubstringStrategy withAll: {'some'. 'thing'}) beCaseSensitive; removeSubstringsFrom: 'someThing' >>> 'Thing'"

	| string |
	string := aString.
	self collectionOfSubstrings do: [ :substring | 
		string := self removeSubstring: substring from: string caseSensitive: self caseSensitive ].
	^ string
]
