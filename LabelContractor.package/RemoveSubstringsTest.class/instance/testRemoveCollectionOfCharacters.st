tests
testRemoveCollectionOfCharacters
	
	| labelAfter |
	" The case sensitive is not activated in that test "
	labelAfter := (self classToTest with: $a) reduce: 'ASomeASomea'.
	self assert: labelAfter equals: self expectedLabelWhenRemovingACharacter .
  
  labelAfter := (self classToTest withAll: { $a. $e }) reduce: 'ASomEaSomea'.
	self assert: labelAfter equals: self expectedLabelWhenCollectionOfCharacters
