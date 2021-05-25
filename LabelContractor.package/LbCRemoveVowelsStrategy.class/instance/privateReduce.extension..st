reduce-label
privateReduce: aString extension: extensionAsString

	"i remove vowels from a string after having tokenized it"
	
	| toknizeString filteredWords|
	toknizeString := tokenizer tokenize: aString.
	filteredWords := self removeVowelsOnEachStringFrom: toknizeString.
	^ '' join: filteredWords, extensionAsString  
	
	
	
	