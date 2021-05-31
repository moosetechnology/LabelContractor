Class {
	#name : #LbCCommonPrefixFinderTest,
	#superclass : #TestCase,
	#instVars : [
		'collectionOfString',
		'commonPrefixFinder'
	],
	#category : 'LabelContractor-Tests'
}

{ #category : #running }
LbCCommonPrefixFinderTest >> setUp [
	super setUp.
	collectionOfString :=  LbCAbstractStrategy withAllSubclasses collect: [:n | n name].
	commonPrefixFinder := LbCCommonPrefixFinder new collectionOfString: collectionOfString  
]

{ #category : #tests }
LbCCommonPrefixFinderTest >> testFindCommonPrefix [
	
	self assert: commonPrefixFinder findCommonPrefix equals: 'LbC'.
	
	"add something really different"
	commonPrefixFinder addAStringToCollection: 'SomethingDiffrent'.
	self assert: commonPrefixFinder findCommonPrefix equals: ''
	
]
