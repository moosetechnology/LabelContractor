Class: LbCRemovePrefixStrategy
                                                                                                    

I am RemovePrefix, and i remove a prefix or a collection of prefixes from a string .
By default, the case sensitive is not respected(you can activate it by invoking #beCaseSensitive method).

**Examples:**

**1 - With a substring by using #with:**
```Smalltalk
| removePrefixStrategy |
removePrefixStrategy := LbCRemovePrefixStrategy new with: 'hashed'.
LbCContractor new
	strategy: removePrefixStrategy;
	reduce: 'HashedCollection'.  
```
returns 'Collection'

**2 - With a collection of substrings by using #withAll:**
```Smalltalk
| removePrefixStrategy |
removePrefixStrategy := LbCRemovePrefixStrategy new withAll: {'hashed'. 'Collection'} .
LbCContractor new
	strategy: removePrefixStrategy;
	reduce: 'HashedCollection'. 
```
returns 'Collection'

**3- With case-sensitive option by using #beCaseSensitive:**
```Smalltalk
| removePrefixStrategy |
removePrefixStrategy := LbCRemovePrefixStrategy new 
            with: 'Hashed';
            beCaseSensitive .
LbCContractor new
	strategy: removePrefixStrategy;
	reduce: 'HashedCollection'.
```
returns 'Collection'

**4- if a prefix is included in another substring in the collection, so we remove the longest prefix**
```Smalltalk
| removePrefixStrategy |
removePrefixStrategy := LbCRemovePrefixStrategy new withAll: {'example'. 'exampleof'}.
LbCContractor new
	strategy: removePrefixStrategy;
	reduce: 'ExampleOfClassName'.
```
returns 'ClassName'
