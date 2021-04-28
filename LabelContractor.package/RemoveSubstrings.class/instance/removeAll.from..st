removing
removeAll: aCollectionOfSubstrings from: aString

	" 
		Remove all occurrences of the elements of the collection from the string. 
	   Example	:
		 >>> self removeAll: #('An' 'Of') from: 'AnExampleOfClass'
		 'ExampleClass'
		 >>> self removeAll: #('gt' 'Of') from: 'AnExampleOfClass'
		 'AnExampleClass' 
		 >>> self removeAll: 'Of' from: 'AnExampleOfClass'
		 'AnExampleClass'
	"

	| reducedString string |
	reducedString := ''.
	string := aString. 
	aCollectionOfSubstrings do: [ :each | 
		reducedString := self removeASubstring: each asString from: string.
		string := reducedString ].
	^ reducedString