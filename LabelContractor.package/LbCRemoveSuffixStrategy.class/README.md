I am a Suffix remover, and i remove a suffix or a collection of suffixes from a string.

By default, the case sensitive is not respected(you can activate it by invoking #beCaseSensitive method).

**Examples:**

1 - with only one suffix to remove:
```Smalltalk
LbCContractor new
	removeSuffix: 'collection';
	reduce: 'HashedCollection'.		
```
returns 'Hashed'

2 - With a collection of suffixes: 
```smalltalk
LbCContractor new
	removeSuffixes: {'hashed'. 'Collection'};
	reduce: 'HashedCollection'.	
``` 
returns 'Hashed'

3- With case-sensitive option by using #beCaseSensitive:
```smalltalk
| removeSuffixStrategy |
removeSuffixStrategy := LbCRemoveSuffixStrategy new .
removeSuffixStrategy
	with: 'Collection';
	beCaseSensitive .
	
LbCContractor new
	strategy: removeSuffixStrategy;
	reduce: 'HashedCollection'.
``` 
returns 'Hashed'

4- if a Suffix is included in another substring in the collection, so we remove the longest Suffix 
```smalltalk
LbCContractor new
	removeSuffixes: {'class'. 'classname'};
	reduce: 'ExampleOfClassName'.
``` 
returns 'ExampleOf'