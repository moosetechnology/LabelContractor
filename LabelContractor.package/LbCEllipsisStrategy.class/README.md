I'm an ellipsis strategy. I'm used to reduce the long labels
The strategy consists in keeping a certain first and last letters of the string separated by 2 points('..').

- If the string represents a file name and it contains an extension, then the extension is not taken into account in the reduction of the string(see the **Example 3**), so it will be added at the end of the reduced string.

**By default, the size of the ellipsis is defined at 8**(that means: 4 first letters + '..' + 4 last letters): 
```Smalltalk
| ellipsisStrategy |
ellipsisStrategy := LbCEllipsisStrategy new .
LbCContractor new
	strategy: ellipsisStrategy;
	reduce: 'HashedCollection'.		
```
returns 'Hash..tion'

**An example to change the size :**
```Smalltalk
| ellipsisStrategy |
ellipsisStrategy := LbCEllipsisStrategy new upTo: 6.
LbCContractor new
	strategy: ellipsisStrategy;
	reduce: 'HashedCollection'.		
```
returns 'Has..ion'

**Example 3: if the string represents a file name**
```Smalltalk
| ellipsisStrategy |
ellipsisStrategy := LbCEllipsisStrategy new.
LbCContractor new
	strategy: ellipsisStrategy;
	reduce: 'HashedCollection.class'.		
```
returns 'Hash..tion.class'

**An example to keep path if the string represents a fully qualified name:**
```Smalltalk
| ellipsisStrategy |
ellipsisStrategy := LbCEllipsisStrategy new keepPath.
LbCContractor new
	strategy: ellipsisStrategy;
	reduce: 'A:path/HashedCollection.class'.		
```
returns 'A:path/Hash..tion.class'
