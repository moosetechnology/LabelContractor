I'm an ellipsis strategy. I'm used to reduce the long labels
The strategy consists in keeping a certain first and last letters of the string separated by 2 points('..').

- If the string contains an extension, then the extension is not taken into account in the reduction of the string, so it will be added at the end of the reduced string.

- If the string contains 
By default, the size of the ellipsis is defined at 8(that means: 4 first letters + '..' + 4 last letters) 
```Smalltalk
| ellipsisStrategy |
ellipsisStrategy := LbCEllipsisStrategy new .
LbCContractor new
		   strategy: ellipsisStrategy;
		   reduce: 'HashedCollection'.		
```
returns 'Hash..tion'

*An example to change the size :*
```Smalltalk
| ellipsisStrategy |
ellipsisStrategy := LbCEllipsisStrategy new upTo: 6.
LbCContractor new
		   strategy: ellipsisStrategy;
		   reduce: 'HashedCollection'.		
```
returns 'Has..ion'

*An example using #keepPath option:*
```Smalltalk
| ellipsisStrategy |
ellipsisStrategy := LbCEllipsisStrategy new 
									keepPath.
LbCContractor new
		   strategy: ellipsisStrategy;
		   reduce: 'A:path/HashedCollection.class'.		
```
returns 'A:path/Hash..tion.class'
