I'm a picker of labels , i take the first letters of a string. 
If the string contains an extension, then we keep it(see the **Example 3**).

**By default I take the first 8 letters:** 
```Smalltalk
| pickFirstLetterStrategy |
pickFirstLetterStrategy := LbCPickFirstLettersStrategy new .
LbCContractor new
	strategy: pickFirstLetterStrategy;
	reduce: 'HashedCollection'.		
```
returns 'HashedCo..'

**An example to change the number of letter using #upTo:anInteger :**
```Smalltalk
| pickFirstLetterStrategy |
pickFirstLetterStrategy := LbCPickFirstLettersStrategy new upTo: 5.
LbCContractor new
	strategy: pickFirstLetterStrategy;
	reduce: 'HashedCollection'.		
```
returns 'Hashe..'

**Example 3: reducing a string representing a file**
```Smalltalk
| pickFirstLetterStrategy |
pickFirstLetterStrategy := LbCPickFirstLettersStrategy new .
LbCContractor new
	strategy: pickFirstLetterStrategy;
	reduce: 'HashedCollection.class'.		
```
returns 'HashedCo.class'

**An other example to keep path if a fully qualified name: **
```Smalltalk
| pickFirstLetterStrategy |
pickFirstLetterStrategy := LbCPickFirstLettersStrategy new keepPath .
LbCContractor new
	strategy: pickFirstLetterStrategy;
	reduce: 'fully/qualified/name/HashedCollection.class'.		
```
returns 'fully/qualified/name/HashedCo.class'