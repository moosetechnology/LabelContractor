Class {
	#name : #LbCRemoveFilenameExtensionStrategyTest,
	#superclass : #LbCAbstractStrategyTest,
	#category : 'LabelContractor-Tests'
}

{ #category : #creation }
LbCRemoveFilenameExtensionStrategyTest >> classToTest [
	
	^ LbCRemoveFilenameExtensionStrategy
]

{ #category : #tests }
LbCRemoveFilenameExtensionStrategyTest >> testBaseName [

	| labelBefore labelAfter |
	labelBefore := ''.
	labelAfter := aContractor reduce: labelBefore.
	self assert: labelAfter equals: ''.

	labelBefore := 'LabelWithExtension.txt'.
	labelAfter := aContractor reduce: labelBefore.
	self assert: labelAfter equals: 'LabelWithExtension'.

	labelBefore := 'LabelWithOutExtension'.
	labelAfter := aContractor reduce: labelBefore.
	self assert: labelAfter equals: 'LabelWithOutExtension'
]
