I am a remover of vowels from a string, and i remove all the vowels from a string(The first letter is always kept whether it is a vowel or a consonant).

*Note:* the letter 'y' sometimes is a vowel or a consonant, so we remove it only if it represents a vowel(according to the rules of grammar of the language).

*Example 1:*
```Smalltalk
| removeVowelsStrategy |
removeVowelsStrategy := LbCRemoveVowelsStrategy new .
LbCContractor new
		   strategy: removeVowelsStrategy;
		   reduce: 'HashedCollection'.		
```
returns 'HshdCllctn'

*Example 2:*
```Smalltalk
| removeVowelsStrategy |
removeVowelsStrategy := LbCRemoveVowelsStrategy new .
LbCContractor new
		   strategy: removeVowelsStrategy;
		   reduce: 'OrderedCollection'.		
```
returns 'OrdrdCllctn'



 