# Class: LbCBaseNameStrategy
***
I'm the BaseName class. I'm used to reduce labels to keep its base name 

Use the method #reduce:
*Examples:*
```Smalltalk
| baseNameStrategy |
baseNameStrategy := LbCBaseNameStrategy new .
LbCContractor new
		   strategy: baseNameStrategy;
		   reduce: 'A:path/HashedCollection.class'.		
```
returns 'HashedCollection'

*An other example:*
```Smalltalk
| baseNameStrategy |
baseNameStrategy := LbCBaseNameStrategy new .
LbCContractor new
		   strategy: baseNameStrategy;
		   reduce: 'HashedCollection.class'.		
```
returns 'HashedCollection'