reduce-label
privateReduce: aString extension: extensionAsString

	" 
		privateReduce: 'SomethingOfLikeThis' extension: '' 
			-> 'SmthngLkeThs'
		privateReduce: 'SomethingLike' extension: '.java'
			-> 'SmthngLke.java'
	"
	| toknizeString filteredWords|
	toknizeString := self tokenizeWords: aString onlyLetters .
	filteredWords := self annalyseWords: toknizeString.
	^ '' join: filteredWords, extensionAsString  
	
	
	
	