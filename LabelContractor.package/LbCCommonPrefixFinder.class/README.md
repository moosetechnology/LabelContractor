I am a finder of common prefix from a collection of substrings. 
I can find the common prefix but my algorithm has limits: the collection must contain substrings starting with the same prefix, if one of the substrings is totally different from the others then I could not deduce the common prefix.

Example:

```Smalltalk
LbCCommonPrefixFinder new 
	collectionOfString: {'anExample' . 'anOtherExample'};
	findCommonPrefix.  
```
returns 'an'  