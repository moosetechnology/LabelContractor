tests
testRemoveCommonPrefix

	self
		assert: removeCommonPrefix removeCommonPrefix
		equals: (LbCAbstractStrategy withAllSubclasses collect: [ :n | n name withoutPrefix: 'LbC' ])