tests
testGetExtensionLabel

	| emptyLabel labelWithExtension labelWithoutExtension extension |
	
	emptyLabel := ''.
	extension := LabelContractor getExtensionLabel: emptyLabel .
	self assert: extension equals: ''.
	
	labelWithExtension := 'SWThisIsAnExample.txt'.
	extension := LabelContractor getExtensionLabel: labelWithExtension.
	self assert: extension equals: '.txt'.
	
	labelWithExtension := 'SWThisIsAnExample.txt.image'.
	extension := LabelContractor getExtensionLabel: labelWithExtension.
	self assert: extension equals: '.image'.
	
	labelWithoutExtension := 'SWThisIsAnExample'.
	extension := LabelContractor getExtensionLabel: labelWithoutExtension.
	self assert: extension equals: ''.
	
	