running
setUp
	super setUp.
	collectionOfString :=  LbCAbstractStrategy withAllSubclasses collect: [:n | n name].
	removeCommonPrefix := LbCRemoveCommonPrefix new collectionOfString: collectionOfString  