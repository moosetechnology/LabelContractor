*LabelContractor
endsWith: suffix caseSensitive: bool

	| extra |
	extra := self size - suffix size.
	^ extra < 0 
		 ifTrue: [ false]
	   ifFalse: [ ( self findString: suffix startingAt: extra + 1 caseSensitive: bool) > 0 ]