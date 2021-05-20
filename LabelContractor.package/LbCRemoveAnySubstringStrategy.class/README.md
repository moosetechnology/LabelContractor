I am a remover of any substring from a string, and i can take a subtring or a collection of substrings.

I remove all the substrings from the string; by default there's no case sensitive

By default, there's no case-sensitive

**Example 1 with only one substring to remove:**
```Smalltalk
LbCContractor new
	removeSubstring: 'hashed';
	reduce: 'HashedCollection'.		
```
returns 'Collection'

**Example 2 with a collection of substrings**
```Smalltalk
LbCContractor new
	removeSubstrings: {'hashed'. 'Tion'};
	reduce: 'HashedCollection'.		
```
returns 'Collec'

**Example 3 with case-sensitive option by using #beCaseSensitive **
```Smalltalk
| removeAnySubstringsStrategy |
removeAnySubstringsStrategy := LbCRemoveAnySubstringStrategy new .
removeAnySubstringsStrategy	
	with: 'Hashed';
	beCaseSensitive.
	
LbCContractor new
	strategy: removeAnySubstringsStrategy;
	reduce: 'HashedCollection'.		
```
returns 'Collection'

