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
removeAnySubstringStrategy := LbCRemoveAnySubstringStrategy new 
														with: 'example';
														keepPath.
LbCContractor new
	strategy: removeAnySubstringStrategy;
	reduce: 'A:path/exampleName'.									
```
returns 'A:path/Name'		

**If you want use the strategies with its default parameters, use the class method corresponding to the strategy:**
- For example, to use LbCAbbreviateNamesStrategy:
```Smalltalk
LbCContractor abbreviateNamesStrategy reduce: 'something'
```

- or, using LbCRemovePrefixStrategy:
```Smalltalk
(LbCContractor removePrefixStrategy: 'some') reduce: 'something'
```
