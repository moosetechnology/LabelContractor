sorting
sortStrategiesByPriority

	" sorting the collection of strategies by its priority.
	  So the first item is the highest priority strategy and the last item is the lowest priority strategy "
	
	self collectionOfStrategy:
		(collectionOfStrategy asSortedCollection: [ 
			 :firstStrategy 
			 :secondStrategy | 
			 firstStrategy class priority > secondStrategy class priority ])