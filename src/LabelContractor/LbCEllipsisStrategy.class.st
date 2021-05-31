"
I'm an ellipsis strategy. I'm used to reduce the long labels
The strategy consists in keeping a certain first and last letters of the string separated by 2 points('..').

- If the string represents a file name and it contains an extension, then the extension is not taken into account in the reduction of the string(see the **Example 3**), so it will be added at the end of the reduced string.

**By default, the size of the ellipsis is defined at 8**(that means: 4 first letters + '..' + 4 last letters): 
```Smalltalk
LbCContractor new
	ellipsis;
	reduce: 'HashedCollection'.		
```
returns 'Hash..tion'

**An example to change the size :**
```Smalltalk
LbCContractor new
	ellipsisUpTo: 6;
	reduce: 'HashedCollection'.		
```
returns 'Has..ion'

**Example 3: if the string represents a file name**
```Smalltalk
LbCContractor new
	ellipsis;
	reduce: 'HashedCollection.class'.		
```
returns 'Hash..tion.class'

**An example to keep path if the string represents a fully qualified name:**
```Smalltalk
LbCContractor new
	ellipsis;
	keepPath;
	reduce: 'A:path/HashedCollection.class'.		
```
returns 'A:path/Hash..tion.class'

"
Class {
	#name : #LbCEllipsisStrategy,
	#superclass : #LbCSizeReductionStrategy,
	#category : 'LabelContractor-Contractor'
}

{ #category : #accessing }
LbCEllipsisStrategy class >> priority [
	
	^ 20
]

{ #category : #private }
LbCEllipsisStrategy >> ellipsis: aString [

	"i return a reduced string by taking the first and last letters of the string seperated by two dots ('..'). Use me only if 'upTo' is > 1"

	"LbCEllipsisStrategy new upTo: 2; ellipsis: 'Example' >>> 'E..e'"
	"LbCEllipsisStrategy new upTo: 3; ellipsis: 'Example' >>> 'E..le'"

	| indexPart2 partsSize part1 part2 |
	partsSize := self upTo // 2.
	indexPart2 := self upTo % 2 == 0
		              ifTrue: [ aString size - partsSize ]
		              ifFalse: [ aString size - partsSize - 1 ].
	part1 := aString copyFrom: 1 to: partsSize.
	part2 := aString copyFrom: indexPart2 + 1 to: aString size.
	^ part1 , '..' , part2
]

{ #category : #'reduce-label' }
LbCEllipsisStrategy >> privateReduce: aString extension: extensionAsString [
	"i keep some first and last letters of the string seperated by two dots ('..'). If 'upTo' is equals to 1 so i return only the first letter of the string."
	
	| string |
	string := aString.
	self upTo = 1 ifTrue: [ string := (aString at: 1) asString ].
	self upTo > 1 ifTrue: [ 
		string := aString size <= self upTo
			                 ifTrue: [ aString ]  "short enough" 
			                 ifFalse: [ self ellipsis: aString ] ].
	^ string , extensionAsString
]
