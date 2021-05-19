tests
testSortStrategiesByPriority

	contractor
		removeVowels;
		baseName;
		removePrefix: 'Hashed';
		sortStrategiesByPriority.

	self assert: (contractor collectionOfStrategy first isKindOf: LbCBaseNameStrategy).
	self assert: (contractor collectionOfStrategy second isKindOf: LbCRemovePrefixStrategy).
	self assert: (contractor collectionOfStrategy last isKindOf: LbCRemoveVowelsStrategy)