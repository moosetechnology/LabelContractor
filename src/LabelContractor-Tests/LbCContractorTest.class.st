Class {
	#name : #LbCContractorTest,
	#superclass : #TestCase,
	#instVars : [
		'contractor',
		'stringExample'
	],
	#category : 'LabelContractor-Tests'
}

{ #category : #running }
LbCContractorTest >> setUp [
	super setUp.
	
	contractor := LbCContractor new.
	stringExample := 'somethingVeryLong'
]

{ #category : #tests }
LbCContractorTest >> testAddStrategy [

	| strategy1 strategy2 |
	strategy1 := LbCEllipsisStrategy new.
	strategy2 := LbCRemovePrefixStrategy new.
	
	contractor addStrategy: strategy1.
	self assert: contractor collectionOfStrategy 
			equals: { strategy1 } asOrderedCollection.
	
	contractor addStrategy: strategy2.
	self assert: contractor collectionOfStrategy 
			equals: { strategy1. strategy2 } asOrderedCollection
]

{ #category : #tests }
LbCContractorTest >> testExtractPathFrom [
	
	self assert: (contractor class extractPathFrom: '' ) equals: String empty.
	self assert: (contractor class extractPathFrom: 'withoutPath' ) equals: String empty.
	self assert: (contractor class extractPathFrom: 'A:path/example/something') equals: 'A:path/example/'.

]

{ #category : #tests }
LbCContractorTest >> testReduceWhenCombiningStrategies [

	| reducedString |
	reducedString := contractor
		                 removePrefix: 'something';
		                 removeFrequentLetters;
		                 removeVowels;
		                 reduce: stringExample.

	self assert: reducedString equals: 'VrLng'
]

{ #category : #tests }
LbCContractorTest >> testReduceWhenCombiningStrategisOtherExamples [

	contractor
		ellipsis;
		pickFirstCharacters.
	self assert: (contractor reduce: stringExample) equals: 'some.'
]

{ #category : #tests }
LbCContractorTest >> testReduceWhenCombiningUsingPriorities [

	| reducedString |
	reducedString := contractor
		                 removeFrequentLetters;
		                 removeVowels;
		                 removePrefix: 'Hashed';
		                 usingPriorities; 
		                 reduce: 'HashedCollection'.

	self assert: reducedString equals: 'Cllcn'
]

{ #category : #tests }
LbCContractorTest >> testReduceWithKeepingPath [

	| reducedString |
	reducedString := contractor
								  ellipsis;
		                keepPath;
		                reduce: 'A:user/exam/path/', stringExample .
	self assert: reducedString equals: 'A:user/exam/path/some..Long'
]

{ #category : #tests }
LbCContractorTest >> testReduceWithoutCombiningStrategies [

	| contractWithRemoveVowels contractWithRemovePrefix |
	contractWithRemoveVowels := contractor strategy: LbCRemoveVowelsStrategy new.
	self
		assert: (contractWithRemoveVowels reduce: stringExample)
		equals: 'smthngVrLng'.

	contractWithRemovePrefix := contractor strategy:
		                            (LbCRemovePrefixStrategy new with: 'something').
	self
		assert: (contractWithRemovePrefix reduce: stringExample)
		equals: 'VeryLong'
]

{ #category : #tests }
LbCContractorTest >> testReduceWithoutKeepingPath [

	| reducedString |
	 
	reducedString := contractor 
								  ellipsis;
		                reduce: stringExample .
	self assert: reducedString equals: 'some..Long'.
]

{ #category : #tests }
LbCContractorTest >> testRemovePathFrom [
	
	self assert: (contractor class removePathFrom: '' ) equals: String empty.
	self assert: (contractor class removePathFrom: 'withoutPath' ) equals: 'withoutPath'.
	self assert: (contractor class removePathFrom: 'A:path/example/something') equals: 'something'.

]

{ #category : #tests }
LbCContractorTest >> testSortStrategiesByPriority [

	contractor
		removeVowels;
		removeFilenameExtension;
		removePrefix: 'Hashed';
		sortStrategiesByPriority.

	self assert: (contractor collectionOfStrategy first isKindOf: LbCRemoveFilenameExtensionStrategy).
	self assert: (contractor collectionOfStrategy second isKindOf: LbCRemovePrefixStrategy).
	self assert: (contractor collectionOfStrategy last isKindOf: LbCRemoveVowelsStrategy)
]
