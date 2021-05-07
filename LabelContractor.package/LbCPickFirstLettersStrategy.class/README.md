I'm a picker of labels , i take the first letters of a string. 
If the string contains an extension, then we keep it.

By default I take the **first 8 letters**: 
```Smalltalk
| pickFirstLetterStrategy |
pickFirstLetterStrategy := LbCPickFirstLettersStrategy new .
LbCContractor new
		   strategy: pickFirstLetterStrategy;
		   reduce: 'HashedCollection'.		
```
returns 'HashedCo..'

*An example to change the number of letter using #upTo:anInteger :*
```Smalltalk
| pickFirstLetterStrategy |
pickFirstLetterStrategy := LbCPickFirstLettersStrategy new upTo: 5.
LbCContractor new
		   strategy: pickFirstLetterStrategy;
		   reduce: 'HashedCollection'.		
```
returns 'Hashe..'