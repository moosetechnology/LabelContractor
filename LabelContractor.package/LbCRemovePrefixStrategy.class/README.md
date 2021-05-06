I am RemovePrefix, and i remove a prefix or a collection of prefixes from a string 
By default, the case sensitive is not respected(you can activate it by invoking #beCaseSensitive method).
 
Examples:

1 - With a prefix:
- Without case sensitive:
```smalltalk
(LbCRemovePrefixStrategy with: 'Example')
         withPath: true ;
         reduce: 'A:/path/ExampleOfClassName'
returns 'A:/path/OfClassName'
```
- With case sensitive:
```smalltalk
(LbCRemovePrefixStrategy with: 'example')
	       beCaseSensitive;
         reduce: 'ExampleOfClassName'
returns 'ExampleOfClassName'
``` 

2- With a collection of prefixes:
```smalltalk
(LbCRemovePrefixStrategy withAll: {'Example'. 'class'})
	       beCaseSensitive;
         reduce: 'ExampleOfClassName'
returns 'OfClassName'
``` 

- if a prefix is included in another substring in the collection, so we remove the longest prefix 
```smalltalk
(LbCRemovePrefixStrategy withAll: {'example'. 'exampleof'})
         reduce: 'ExampleOfClassName'
returns 'ClassName'
``` 





