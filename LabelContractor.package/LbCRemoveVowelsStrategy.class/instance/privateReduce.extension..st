reduce-label
privateReduce: aString extension: extensionAsString

	" remove vowels from a string after tokenized it "
	
	| toknizeString filteredWords|
	toknizeString := tokenizer tokenize: aString.
	filteredWords := self removeVowelsOnEachStringFrom: toknizeString.
	^ '' join: filteredWords, extensionAsString  
	
	
	
	