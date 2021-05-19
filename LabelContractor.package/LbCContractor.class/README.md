I am a contractor and i can contract strings using several strategies

If the string represents a fully qualified name, by default I will remove the 'path' part before applying any strategy(if you want to keep it, you can use **#keepPath** method) .

**Example 1: By default i remove 'path' if the string represents a fully qualified name **
```Smalltalk
LbCContractor new
	removeAnySubstring: 'example';
	reduce: 'A:path/exampleName'.
```
returns 'Name'

**Example 2: keep path if a fully qualified name by using #keepPath**
```Smalltalk
LbCContractor new
	removeAnySubstring: 'example';
	keepPath;
	reduce: 'A:path/exampleName'.									
```
returns 'A:path/Name'		

**If you want to use the strategies with its default parameters, then use the instance method corresponding to the strategy:**
- For example, to use LbCAbbreviateNamesStrategy:
```Smalltalk
LbCContractor new
	abbreviateNames;
	reduce: 'something'
```

- or, using LbCRemovePrefixStrategy:
```Smalltalk
LbCContractor new
	removePrefix: 'some';
	reduce: 'something'
```

**Example with the sequential combination of strategies:**
```Smalltalk
LbCContractor new
	removePrefix: 'Hashed';
	removeFrequentLetters;
	removeVowels;
	reduce: 'HashedCollection'	
```
returns 'Cllcn'