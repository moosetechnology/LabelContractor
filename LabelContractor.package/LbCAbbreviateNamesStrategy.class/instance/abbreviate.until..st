splitjoin
abbreviate: aString until: anInteger
	
	"abbreviate names to their first letters except the last name."
		
	" LbCAbbreviateNamesStrategy new abbreviate: 'AnExampleOfString' until: 3 >>> 'AEOString'"
	" LbCAbbreviateNamesStrategy new abbreviate: 'ShortExample' until: 3 >>> 'SExample'"
	
	| tokens nameParts abbreviations |
	tokens := tokenizer tokenize: aString.
	nameParts := tokens size > anInteger 
		             ifTrue: [ self devide: tokens until: anInteger ]
		             ifFalse: [ self devide: tokens until: tokens size - 1 ].
	abbreviations := nameParts first collect: [ :aCaracter | 
		                 aCaracter first asUppercase ].
	^ abbreviations concatenatesStrings
	  , nameParts second concatenatesStrings