tests
testSortStrategiesByPriority

	contractor
		removeVowels;
		removeFilenameExtension;
		removePrefix: 'Hashed';
		sortStrategiesByPriority.

	self assert: (contractor collectionOfStrategy first isKindOf: LbCRemoveFilenameExtensionStrategy).
	self assert: (contractor collectionOfStrategy second isKindOf: LbCRemovePrefixStrategy).
	self assert: (contractor collectionOfStrategy last isKindOf: LbCRemoveVowelsStrategy)