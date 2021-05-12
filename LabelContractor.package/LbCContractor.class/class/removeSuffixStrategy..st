removing-strategies
removeSuffixStrategy: aStringOrACollectionOfStrings
	
	"
		Examples: 
		```Smalltalk
		LbCContractor removeSuffixxStrategy: 'something'
		```
		Or, 
		```Smalltalk
		LbCContractor removeSuffixStrategy: {'some' . 'thing'}
		```
	"
	
	^ self new
		     strategy: (LbCRemoveSuffixStrategy new withAll: aStringOrACollectionOfStrings);
		     yourself