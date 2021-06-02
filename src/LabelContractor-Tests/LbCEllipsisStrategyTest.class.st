Class {
	#name : #LbCEllipsisStrategyTest,
	#superclass : #LbCReduceUpToStrategyTest,
	#category : #'LabelContractor-Tests'
}

{ #category : #creation }
LbCEllipsisStrategyTest >> classToTest [
	
	^ LbCEllipsisStrategy 
]

{ #category : #tests }
LbCEllipsisStrategyTest >> testEllipsisShortStringCase [

	| labelBefore labelAfter |

	labelBefore := 'Short'.
	labelAfter := aContractor reduce: labelBefore.
	self assert: labelAfter equals: 'Short'.

	labelBefore := 'Short.txt'.
	labelAfter := aContractor reduce: labelBefore.
	self assert: labelAfter equals: 'Short.txt'.
]

{ #category : #tests }
LbCEllipsisStrategyTest >> testEllipsisWithDefaultSize [

	" in what follows, we instantiate the LabelContractor without specifying the size of the ellipsis. 
	  In this case, the default size is 8 (that means: 4 first letters + '...' + 4 last letters)
	"

	| labelBefore labelAfter |
	labelBefore := 'ALabelWithAnExtension.txt'.
	labelAfter := aContractor reduce: labelBefore.
	self assert: labelAfter equals: 'ALab~sion.txt'.

	labelBefore := 'ALabelWithOutExtension'.
	labelAfter := aContractor reduce: labelBefore.
	self assert: labelAfter equals: 'ALab~sion'.
]

{ #category : #tests }
LbCEllipsisStrategyTest >> testEllipsisWithSizeEqualsOne [

	| labelBefore labelAfter |
	
	labelBefore := 'ALongLabelWithOutExtension'.
	
	aContractor upTo: 1.
	labelAfter := aContractor reduce: labelBefore.
	self assert: labelAfter equals: 'A'
]

{ #category : #tests }
LbCEllipsisStrategyTest >> testEllipsisWithSpecifyingSize [

	| labelBefore labelAfter |
	
	labelBefore := 'ALongLabelWithOutExtension'.
	
	" odd size value "
	aContractor upTo: 5.
	labelAfter := aContractor reduce: labelBefore.
	self assert: labelAfter equals: 'AL~ion'. 
	
	" even size value "
	aContractor upTo: 10.
	labelAfter := aContractor reduce: labelBefore.
	self assert: labelAfter equals: 'ALong~nsion'. 
	
	
]
