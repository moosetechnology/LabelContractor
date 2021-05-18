reduce-label
reduce: aString

	"
		I apply the strategies of the collection one by one on the string passed as an argument.
		
		Examples:
		  ```̀Smalltalk
			LbCContractor new 
				strategy: (LbCRemoveVowelsStrategy new);
				reduce: 'something'
			```
			returns 'smthng'	
				
	"

	| string |
	string := aString.
	self collectionOfStrategy do: [ :each | 
		string := each reduce: string ].
	^ string