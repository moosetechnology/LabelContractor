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

**Example with the sequential combination of strategies: it applies the strategies one by one in the order chosen .**
```Smalltalk
LbCContractor new
	removePrefix: 'Hashed';
	removeFrequentLetters;
	removeVowels;
	reduce: 'HashedCollection'	
```
returns 'Cllcn'

**if you don't know how to order the strategies(which you have chosen) to combine them, use #usingPriorities to let the program order the strategies and apply them according to their priority** 
```Smalltalk
LbCContractor new
	usingPriorities;
	removeVowels;
	removePrefix: 'Hashed';
	removeFrequentLetters;
	reduce: 'HashedCollection'	
``` 
'Cllcn'