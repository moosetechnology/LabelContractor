I'm the BaseName class. I'm used to reduce labels to keep its base name

**Example 1:**
```Smalltalk
| baseNameStrategy |
baseNameStrategy := LbCBaseNameStrategy new .
LbCContractor new
 strategy: baseNameStrategy;
 reduce: 'A:path/HashedCollection.class'.  
```
returns 'HashedCollection'

**Example 2:**
```Smalltalk
| baseNameStrategy |
baseNameStrategy := LbCBaseNameStrategy new .
LbCContractor new
 strategy: baseNameStrategy;
 reduce: 'HashedCollection.class'.  
```
returns 'HashedCollection'