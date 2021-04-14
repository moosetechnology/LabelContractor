tests
testGetExtensionLabel

	| labelWithExtension labelWithoutExtension extension |
	labelWithExtension := 'SWThisIsAnExample.txt'.
	extension := labelContractor getExtensionLabel: labelWithExtension.
	self assert: extension equals: '.txt'.

	labelWithoutExtension := 'SWThisIsAnExample'.
	extension := labelContractor getExtensionLabel: labelWithoutExtension.
	self assert: extension equals: ''