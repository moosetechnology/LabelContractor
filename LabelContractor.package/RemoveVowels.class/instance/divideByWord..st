as yet unclassified
divideByWord: aString

	"
		'23SomethingHer43Like33' -> {23. Something. Her43. Like33}
		'23SomethingHer43Like33Other' -> {23. Something. Her43. Like33. Other}	
		'DFSSomethingHGJKin'	 -> { DFS. Something }
		'32DF' -> ??	
	"

	| divided consecutiveUpperCase beginWord |
	divided := OrderedCollection new.
	consecutiveUpperCase := 0.
	beginWord := 1.
	self halt.
	1 to: aString size do: [ :each | 
		(aString at: each) isUppercase
			ifTrue: [ 
				consecutiveUpperCase := consecutiveUpperCase + 1.
				beginWord := each.
				consecutiveUpperCase > 1 ifTrue: [ 
					each + 1 < aString size
						ifTrue: [ 
							((aString at: each + 1) isLowercase and:
								 (aString at: each + 1) isLetter) ifTrue: [ 
								divided add: (aString copyFrom: 1 to: each - 1) ] ].
					each = aString size ifTrue: [ divided add: aString ] ] ]
			ifFalse: [ 
				each + 1 <= aString size
					ifTrue: [ 
						(aString at: each + 1) isUppercase ifTrue: [ 
							divided add: (aString copyFrom: beginWord to: each) ] ]
					ifFalse: [ divided add: (aString copyFrom: beginWord to: each) ].
				consecutiveUpperCase := 0 ] ].
	^ divided