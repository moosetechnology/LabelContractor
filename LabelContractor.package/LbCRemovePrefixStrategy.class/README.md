I am RemovePrefix, and i remove a prefix from a string 

Examples:
- Without case sensitive:
```smalltalk
LbCRemovePrefixStrategy new with: 'Example';
         withPath: true ;
         reduce: 'A:/path/ExampleOfClassName'
returns 'A:/path/OfClassName'
```
- With case sensitive:
```smalltalk
LbCRemovePrefixStrategy new with: 'Example';
	      caseSensitive: true;
         withPath: true ;
         reduce: 'A:/path/ExampleOfClassName'
returns 'A:/path/OfClassName'
``` 
