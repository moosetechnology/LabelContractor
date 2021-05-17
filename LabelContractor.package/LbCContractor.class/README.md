I am a contractor and i can contract strings using several strategies

**Example 1:**
```Smalltalk
| removeAnySubstringStrategy |
removeAnySubstringStrategy := LbCRemoveAnySubstringStrategy new with: 'example'.
LbCContractor new
	strategy: removeAnySubstringStrategy;
	reduce: 'A:path/exampleName'.
```
returns 'Name'

**Example 2:**
```Smalltalk
| removeAnySubstringStrategy |
removeAnySubstringStrategy := LbCRemoveAnySubstringStrategy new .
removeAnySubstringStrategy 
	with: 'example'; 
	keepPath.
	
LbCContractor new
	strategy: removeAnySubstringStrategy;
	reduce: 'A:path/exampleName'.									
```
returns 'A:path/Name'		

**If you want to use the strategies with its default parameters, then use the class method corresponding to the strategy:**
- For example, to use LbCAbbreviateNamesStrategy:
```Smalltalk
LbCContractor abbreviateNamesStrategy reduce: 'something'
```

- or, using LbCRemovePrefixStrategy:
```Smalltalk
(LbCContractor removePrefixStrategy: 'some') reduce: 'something'
```

**Example with the sequential combination of strategies:**
```Smalltalk
| strategy1 strategy2 strategy3 |
strategy1 := LbCRemovePrefixStrategy new with: 'Hashed'.
strategy2 := LbCRemoveFrequentLettersStrategy new.
strategy3 := LbCRemoveVowelsStrategy new.
LbCContractor new
	addStrategy: strategy1;
	addStrategy: strategy2;
	addStrategy: strategy3;
	reduce: 'HashedCollection'	
```
returns 'Cllcn'