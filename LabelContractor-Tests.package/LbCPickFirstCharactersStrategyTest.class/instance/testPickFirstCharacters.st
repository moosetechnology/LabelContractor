tests
testPickFirstCharacters
	"By default, the number of letters taken is 8"

	| stringExample |
	self assert: (aContractor reduce: '') equals: ''.

	stringExample := 'AnExampleOfClass'.
	self assert: (aContractor reduce: stringExample) equals: 'AnExampl..'