I remove several substrings from a string

By default, the case sensitive is not respected, and the second example show how to activate it.

Without case sensitive:
```smalltalk
>>> (LabelContractor with: (RemoveCollectionOfSubstrings with: #('Of' 'le')) ) 
									withPath: true ;
									reduce: 'A:/path/ExampleOfClassName'
returns 'A:/path/ExampClassName'		
```

With case sensitive:
```smalltalk
>>> (LabelContractor 
					with: ( RemoveCollectionOfSubstrings new
												with: #('Of' 'name');
												caseSensitive: true) ) 
   withPath: true; 
   reduce: 'A:/path/ClassName'
returns 'A:/path/ClassName'
```smalltalk