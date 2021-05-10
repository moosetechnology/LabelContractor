I am a Suffix remover, and i remove a suffix or a collection of suffixes from a string.

By default, the case sensitive is not respected(you can activate it by invoking #beCaseSensitive method).

Examples:

1 - With a substring by using #with:
```Smalltalk
| removeSuffixStrategy |
removeSuffixStrategy := LbCRemoveSuffixStrategy new 
											with: 'Collection'.
LbCContractor new
		   strategy: removeSuffixStrategy;
		   reduce: 'HashedCollection'.		
```
returns 'Hashed'

2 - With a collection of substrings by using #withAll: 
```smalltalk
removeSuffixStrategy := LbCRemoveSuffixStrategy new 
											withAll: {'hashed'. 'Collection'} .
LbCContractor new
		   strategy: removeSuffixStrategy;
		   reduce: 'HashedCollection'.	
``` 
returns 'Hashed'

3- With case-sensitive option by using #beCaseSensitive:
```smalltalk
removeSuffixStrategy := LbCRemoveSuffixStrategy new 
											with: 'Collection';
											beCaseSensitive .
LbCContractor new
		   strategy: removeSuffixStrategy;
		   reduce: 'HashedCollection'.
``` 
returns 'Hashed'

4- if a Suffix is included in another substring in the collection, so we remove the longest Suffix 
```smalltalk
removeSuffixStrategy := LbCRemoveSuffixStrategy new 
											 withAll: {'class'. 'classname'}.
LbCContractor new
		   strategy: removeSuffixStrategy;
		   reduce: 'ExampleOfClassName'.
``` 
returns 'ExampleOf'