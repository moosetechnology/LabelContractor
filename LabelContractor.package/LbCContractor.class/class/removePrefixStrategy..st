removing-strategies
removePrefixStrategy: aStringOrACollectionOfStrings

	"
		Examples: 
		```Smalltalk
		LbCContractor removePrefixStrategy: 'something'
		```
		Or, 
		```Smalltalk
		LbCContractor removePrefixStrategy: {'some' . 'thing'}
		```
	"

	^ self new
		  strategy:
			  (LbCRemovePrefixStrategy new withAll:
					   aStringOrACollectionOfStrings);
		  yourself