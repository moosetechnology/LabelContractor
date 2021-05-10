private
removeSubstringsFrom: aString

	   "
			remove all the substrings from the string
			By default there's no case sensitive
		"

	   "(LbCRemoveAnySubstringStrategy with: 'some') removeSubstringsFrom: 'somethingOrsomeThingElse' >>> 'thingOrThingElse'"

	   "(LbCRemoveAnySubstringStrategy withAll: {'some'. 'thing'}) removeSubstringsFrom: 'somethingOrSomeTHINGElse' >>> 'OrElse'"

	   "(LbCRemoveAnySubstringStrategy withAll: {'some'. 'thing'}) beCaseSensitive; removeSubstringsFrom: 'someThing' >>> 'Thing'"

	   | string |
	   string := aString.
	   self collectionOfSubstrings do: [ :substring | 
		   string := self removeSubstring: substring from: string caseSensitive: self caseSensitive ].
	   ^ string