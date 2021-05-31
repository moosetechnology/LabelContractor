Class {
	#name : #LbCRemoveFrequentLettersStrategyTest,
	#superclass : #LbCReduceUpToStrategyTest,
	#category : 'LabelContractor-Tests'
}

{ #category : #creation }
LbCRemoveFrequentLettersStrategyTest >> classToTest [
	
	^ LbCRemoveFrequentLettersStrategy 
]

{ #category : #tests }
LbCRemoveFrequentLettersStrategyTest >> testFindFirstFrequentLetter [

	| string indexFirstFreqLetter |

	string := 'hello'.
	indexFirstFreqLetter := aContractor findFirstFrequentLetter: string.
	" 'e' is the first frequent letter in the example 'hello' "
	self assert: indexFirstFreqLetter equals: (string indexOf: $e).

	string := ''.
	indexFirstFreqLetter := aContractor findFirstFrequentLetter: string.
	self assert: indexFirstFreqLetter equals: 0.
]

{ #category : #tests }
LbCRemoveFrequentLettersStrategyTest >> testRemoveFrequentLetters [
	"By default, the size of the reduced string will be 8."

	| labelBefore labelAfter |
	labelBefore := ''.
	labelAfter := aContractor reduce: labelBefore.
	self assert: labelAfter equals: labelBefore.

	labelBefore := 'AnExampleWithExtension.txt'.
	labelAfter := aContractor reduce: labelBefore.
	self assert: labelAfter equals: 'AxmWihxi.txt'.

	labelBefore := 'AnExampleWithOutExtension'.
	labelAfter := aContractor reduce: labelBefore.
	self assert: labelAfter equals: 'AxmWihxi'
]

{ #category : #tests }
LbCRemoveFrequentLettersStrategyTest >> testRemoveFrequentLettersChangeSize [

	| contractorSpecifySize labelBefore labelAfter |

	contractorSpecifySize :=  (aContractor upTo: 12).

	labelBefore := 'AnExampleWithExtension.txt'.
	labelAfter := contractorSpecifySize reduce: labelBefore.
	self assert: labelAfter equals: 'AxmplWihxion.txt'.

	labelBefore := 'AnExampleWithOutExtension'.
	labelAfter := contractorSpecifySize reduce: labelBefore.
	self assert: labelAfter equals: 'AxmplWihOxio'.
]

{ #category : #tests }
LbCRemoveFrequentLettersStrategyTest >> testRemoveOneFrequentLetter [

	| labelBefore labelAfter |
	labelBefore := ''.
	labelAfter := aContractor removeOneFrequentLetter: labelBefore.
	self assert: labelAfter equals: labelBefore.

	labelBefore := 'AnExampleOfTheClass.txt'.
	labelAfter := aContractor removeOneFrequentLetter: labelBefore.
	" One $e is deleted on: ...Example...txt -> ...Exampl..txt "
	self assert: labelAfter equals: 'AnExamplOfTheClass.txt'
]
