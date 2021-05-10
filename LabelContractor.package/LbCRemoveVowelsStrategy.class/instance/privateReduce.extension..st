reduce-label
privateReduce: aString extension: extensionAsString

	" 
		privateReduce: 'SomethingOfLikeThis' extension: '' 
			-> 'SmthngLkThs'
		privateReduce: 'SomethingLike' extension: '.java'
			-> 'SmthngLk.jv'
	"
	| toknizeString filteredWords|
	toknizeString := tokenizer tokenizeWords: aString.
	filteredWords := self removeVowelsOnEachStringFrom: toknizeString.
	^ '' join: filteredWords, extensionAsString  
	
	
	
	