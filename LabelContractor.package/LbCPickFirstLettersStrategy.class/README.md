I'm a picker of labels , i take the first letters of a string. 
If the string contains an extension, then we keep it(see the **Example 3**).

**By default I take the first 8 letters:** 
```Smalltalk
LbCContractor new
	pickFirstLetters;
	reduce: 'HashedCollection'.		
```
returns 'HashedCo..'

**An example to change the number of letter:**
```Smalltalk
LbCContractor new
	pickFirstLettersUpTo: 5;
	reduce: 'HashedCollection'.		
```
returns 'Hashe..'

**Example 3: reducing a string representing a file**
```Smalltalk
LbCContractor new
	pickFirstLetters;
	reduce: 'HashedCollection.class'.		
```
returns 'HashedCo.class'

**An other example to keep path if a fully qualified name: **
```Smalltalk
LbCContractor new
	pickFirstLetters;
	keepPath;
	reduce: 'fully/qualified/name/HashedCollection.class'.		
```
returns 'fully/qualified/name/HashedCo.class'