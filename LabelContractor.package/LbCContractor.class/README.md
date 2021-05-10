I am a contractor and i can contract strings using several strategies

*Example 1:*
```Smalltalk
| removeAnySubstringStrategy |
removeAnySubstringStrategy := LbCRemoveAnySubstringStrategy new with: 'example'.
LbCContractor new
	strategy: removeAnySubstringStrategy;
   reduce: 'A:path/exampleName'.
>>> 'Name'
```

*Example 2:*
```Smalltalk
removeAnySubstringStrategy := LbCRemoveAnySubstringStrategy new 
														with: 'example';
														keepPath.
LbCContractor new
	strategy: removeAnySubstringStrategy;
   reduce: 'A:path/exampleName'.
>>> 'A:path/Name'														
```
