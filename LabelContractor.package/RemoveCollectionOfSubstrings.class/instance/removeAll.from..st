removing
removeAll: collectionOfString from: aString

	" 
		Remove all occurrences of the elements of the collection from the string. 
	   Example	:
		 >> self removeAll: #('An' 'Of') from: 'AnExampleOfClass'
		 'ExampleClass'
		 >> self removeAll: #('gt' 'Of') from: 'AnExampleOfClass'
		 'AnExampleClass' 
		 >> self removeAll: 'Of' from: 'AnExampleOfClass'
		 'AnExampleClass'
	"

	| reducedString string |
	reducedString := ''.
	string := aString.
	collectionOfString isString
		ifTrue: [ ^ self removeAnySubstring: collectionOfString from: string ]
		ifFalse: [ 
			collectionOfString do: [ :each | 
				reducedString := self removeAnySubstring: each from: string.
				string := reducedString ] ].
	^ reducedString