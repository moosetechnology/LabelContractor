private
removeSubstringsFrom: aString
	"
		remove all the substrings from the string
		By default there's no case sensitive 
		>>> (RemoveAnySubstring with: 'some') removeSubstringsFrom: 'somethingOrsomeThingElse'
		'thingOrThingElse'
		>>> (RemoveAnySubstring withAll: {'some'. 'thing'}) removeSubstringsFrom: 'somethingOrsomeThingElse'
		'OrElse'
		>>> (RemoveAnySubstring withAll: {'some'. 'thing'}) beCaseSensitive; removeSubstringsFrom: 'someThing'
		'Thing'
	"
	| string |
	string := aString.
	self collectionOfSubstrings do: [ :substring | 
		string := string
			          copyReplaceAll: substring asString
			          with: ''
			          caseSensitive: self caseSensitive ].
	^ string