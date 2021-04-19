removing
removeFrequentLetters: aString

	"	
		Return a string without frequent character. 
		By default, we reduce the string until it has a size of 8 characters.
		
		If the string contains an extension, then we will not consider the extension part in the reduction. In addition, the result will contain the extension added at the end.
	"

	| aStringWithOutExtension ext |
	ext := self class getExtensionLabel: aString.
	" we do not consider the extension part in the reduction "
	aStringWithOutExtension := self class removeExtension: aString.
	^ (self
		   remove: aStringWithOutExtension
		   upTo: self upTo) , ext