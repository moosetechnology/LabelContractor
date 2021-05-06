I am a contractor and i can contract strings using several strategies

**Example 1:**
LbCContractor ellipsisStrategy
	upTo: 4;
	keepPath;
	reduce: 'A:path/Something'.	
>>> 'A:path/So..ng'

**Example 2:**
LbCContractor ellipsisStrategy
	upTo: 4;
	reduce: 'A:path/Something'.
>>> 'So..ng'

**Example 3:**
LbCContractor 	removePrefixStrategy 
	with: 'Something';
	reduce: 'somethingLikethis'.
>>> 'Likethis'

LbCContractor 	removePrefixStrategy 
	with: 'something';
	beCaseSensitive;
	reduce: 'somethingLikethis'.
>>> 'Likethis'
