reduce-label
privateReduce: aString extension: extensionAsString

	" 
		privateReduce: 'SomethingOfLikeThis' extension: '' 
			-> 'SmthngLkeThs'
		privateReduce: 'SomethingLike' extension: '.java'
			-> 'SmthngLke.java'
	"
	| toknizeString filteredWords|
	toknizeString := tokenizer tokenizeWords: aString onlyLetters .
	filteredWords := self removeVowelsOnEachStringFrom: toknizeString.
	^ '' join: filteredWords, extensionAsString  
	
	
	
	