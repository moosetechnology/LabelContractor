reduce-label
privateReduce: aString extension: extensionAsString
	"i keep some first and last letters of the string seperated by two dots ('..'). If 'upTo' is equals to 1 so i return only the first letter of the string."
	
	| reducedString |
	self upTo <= 0 ifTrue: [ reducedString := String new ].
	self upTo = 1 ifTrue: [ reducedString := (aString at: 1) asString ].
	self upTo > 1 ifTrue: [ 
		reducedString := aString size <= self upTo
			                 ifTrue: [ aString ]  "short enough" 
			                 ifFalse: [ self ellipsis: aString ] ].
	^ reducedString , extensionAsString