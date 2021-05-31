Class {
	#name : #LbCAbstractStrategyTest,
	#superclass : #TestCase,
	#instVars : [
		'aContractor',
		'exampleString'
	],
	#category : 'LabelContractor-Tests'
}

{ #category : #testing }
LbCAbstractStrategyTest class >> isAbstract [ 
	
	^ self == LbCAbstractStrategyTest 
]

{ #category : #creation }
LbCAbstractStrategyTest >> classToTest [
	
	^ self subclassResponsibility 
]

{ #category : #running }
LbCAbstractStrategyTest >> setUp [

	super setUp.
	exampleString := 'AnExampleOfAClass.txt'.
	aContractor := self classToTest new
]

{ #category : #tests }
LbCAbstractStrategyTest >> testExtractExtensionsFrom [

	self assert: (LbCAbstractStrategy extractExtensionsFrom: '')
			equals: OrderedCollection new.
	
	self assert: (LbCAbstractStrategy extractExtensionsFrom: 'something')
			equals: OrderedCollection new.
	
	self assert: (LbCAbstractStrategy extractExtensionsFrom: 'something.txt')
			equals: #( 'txt' ) asOrderedCollection.
	
	self assert: (LbCAbstractStrategy extractExtensionsFrom: 'something.txt.exe')
			equals: #( 'txt' 'exe' ) asOrderedCollection
]

{ #category : #tests }
LbCAbstractStrategyTest >> testJoinExtractedExtensions [
	
	self assert: (LbCAbstractStrategy joinExtractedExtensions: OrderedCollection empty) equals: ''.
	self assert: (LbCAbstractStrategy joinExtractedExtensions: #('tar') asOrderedCollection) equals: '.tar'.
	self assert: (LbCAbstractStrategy joinExtractedExtensions: #('tar' 'gz') asOrderedCollection) equals: '.tar.gz'.
	

]

{ #category : #tests }
LbCAbstractStrategyTest >> testRemoveExtensionFrom [

	self
		assert: (LbCAbstractStrategy removeExtension: '' from: '')
		equals: String empty.

	self
		assert: (LbCAbstractStrategy removeExtension: 'txt' from: 'something')
		equals: 'something'.

	self
		assert: (LbCAbstractStrategy removeExtension: 'txt' from: 'something.txt')
		equals: 'something'.

	self
		assert: (LbCAbstractStrategy removeExtension: 'gz' from: 'something.tar.gz')
		equals: 'something.tar'.
		
	self
		assert: (LbCAbstractStrategy removeExtension: 'tar' from: 'something.tar.gz')
		equals: 'something.tar.gz'
]

{ #category : #tests }
LbCAbstractStrategyTest >> testRemoveExtensionsFrom [
	
	self assert: (LbCAbstractStrategy removeExtensionsFrom: '') equals: ''.
		
	self
		assert: (LbCAbstractStrategy removeExtensionsFrom: 'something.txt')
		equals: 'something'.

	self
		assert: (LbCAbstractStrategy removeExtensionsFrom: 'something.tar.gz')
		equals: 'something'.
	
	self
		assert: (LbCAbstractStrategy removeExtensionsFrom: 'something..txt')
		equals: 'something.'.
		
	self
		assert: (LbCAbstractStrategy removeExtensionsFrom: 'something')
		equals: 'something'.
]

{ #category : #tests }
LbCAbstractStrategyTest >> testRemoveExtensionsFromHowMany [
		
	self
		assert: (LbCAbstractStrategy removeExtensionsFrom: 'something.tar.gz' howMany: 1 )
		equals: 'something.tar'.

	self
		assert: (LbCAbstractStrategy removeExtensionsFrom: 'something.tar.gz' howMany: 2)
		equals: 'something'.
	
	self
		assert: (LbCAbstractStrategy removeExtensionsFrom: 'something.tar.gz' howMany: 4)
		equals: 'something'.
		
	self
		assert: (LbCAbstractStrategy removeExtensionsFrom: 'something' howMany: 1)
		equals: 'something'.
]
