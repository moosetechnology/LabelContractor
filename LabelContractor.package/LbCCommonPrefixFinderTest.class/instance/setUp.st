running
setUp
	super setUp.
	collectionOfString :=  LbCAbstractStrategy withAllSubclasses collect: [:n | n name].
	commonPrefixFinder := LbCCommonPrefixFinder new collectionOfString: collectionOfString  