removing-strategies
removeAnySubstringStrategy: aStringOrACollectionOfStrings
	
	" 
		Takes as argument a string or a collection of strings 
		
		Examples: 
		```Smalltalk
		LbCContractor removeAnySubstringStrategy: 'something'
		```
		Or, 
		```Smalltalk
		LbCContractor removeAnySubstringStrategy: {'some' . 'thing'}
		```
	"
	^ self new
		  strategy: (LbCRemoveAnySubstringStrategy new withAll:
					   aStringOrACollectionOfStrings);
		  yourself