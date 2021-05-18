reduce-label
reduce: aString

	"
		I apply the strategies of the collection one by one on the string passed as an argument.
		
		* Example:
		  ```Smalltalk
			LbCContractor new 
				strategy: (LbCRemoveVowelsStrategy new);
				reduce: 'something'
			```
			returns 'smthng'	
		* Other example:	
			```Smalltalk
			LbCContractor new 
				addStrategy: (LbCRemoveVowelsStrategy new);
				addStrategy: (LbCPickFirstLettersStrategy new upTo: 3);
				reduce: 'something'
			```	
			returns 'smt..'			
	"

	| string |
	string := aString.
	self collectionOfStrategy do: [ :each | 
		string := each reduce: string ].
	^ string