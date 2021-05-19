I'm a remover of frequent letters in a label. 

If the string contains an extension, then i will not consider the 'extension part' in the reduction(see the **Example 1**). In addition, the result will contain the 'extension part' added at the end.

By default, i reduce the label's name until it has a size of 8 characters.

**Example 1:**
```Smalltalk
LbCContractor new
	removeFrequentLetters;
	reduce: 'HashedCollection.class'.		
```
returns 'HhdCocio.class'

**Example 2:**
```Smalltalk
LbCContractor new
	removeFrequentLetters;
	reduce: 'HashedCollection'.		
```
returns 'HhdCocio'

**Example 3: You can change the size**
```Smalltalk
LbCContractor new
	removeFrequentLettersUpTo: 12;
	reduce: 'HashedCollection'.		
```
returns 'HhdCollction'

