I am RemovePrefix, and i remove a prefix from a string 

Examples:
- Without case sensitive:
```smalltalk
(LabelContractor with: (
	RemovePrefix new with: 'Example') ) 
         withPath: true ;
         reduce: 'A:/path/ExampleOfClassName'
returns 'A:/path/OfClassName'
```
- With case sensitive:
```smalltalk
(LabelContractor with: (
	RemovePrefix new with: 'Example';
	             caseSensitive: true) ) 
         withPath: true ;
         reduce: 'A:/path/ExampleOfClassName'
returns 'A:/path/OfClassName'
``` 
