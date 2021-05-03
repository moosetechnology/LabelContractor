splitjoin
abbreviate: aString until: anInteger

	| tokens nameParts abbreviations |
	tokens := tokenizer tokenizeWords: aString.
	nameParts := tokens size > anInteger 
		             ifTrue: [ self devide: tokens until: anInteger ]
		             ifFalse: [ self devide: tokens until: tokens size - 1 ].
	abbreviations := nameParts first collect: [ :aCaracter | 
		                 aCaracter first asUppercase ].
	^ abbreviations concatenatesStrings
	  , nameParts second concatenatesStrings