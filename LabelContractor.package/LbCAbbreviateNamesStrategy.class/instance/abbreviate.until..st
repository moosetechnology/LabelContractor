splitjoin
abbreviate: aString until: anInteger
	
	"abbreviate names to their first letters except the last name."
		
	"LbCAbbreviateNamesStrategy new abbreviate: 'AnExampleOfString' until: 3 >>> 'AEOString'"
	"LbCAbbreviateNamesStrategy new abbreviate: 'ShortExample' until: 3 >>> 'SExample'"
	
	| tokens nameParts abbreviations |
	tokens := tokenizer tokenize: aString.
	nameParts := tokens size > anInteger 
		             ifTrue: [ self divide: tokens until: anInteger ]
		             ifFalse: [ self divide: tokens until: tokens size - 1 ].
	abbreviations := nameParts first collect: [ :aCaracter | aCaracter first asUppercase ].
	^ '' join: abbreviations , ('' join: nameParts second) 