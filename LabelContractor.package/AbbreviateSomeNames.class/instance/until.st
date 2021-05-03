accessing
until
	
	^ until ifNil: [ until := self class defaultNbWordsToAbbreviate ]