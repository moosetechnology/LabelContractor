reduce-label
reduce: aString

		self upTo < 1 ifTrue: [ ^ String empty ]. 
		^ super reduce: aString