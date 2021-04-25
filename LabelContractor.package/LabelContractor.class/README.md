I'm an Abstract contractor of labels, and i reduce the label's context following several strategies.

If the string represents an absolute path to a file, by default I will remove the 'path' part before applying any contraction.

Whatever the strategy, the common method used to reduce a label's context is: '**reduce:**'

Examples:

Without specifying the size of the resulting string(default size is 8) 
```Smalltalk
>>> (LabelContractor with: Ellipsis) reduce: 'AnExampleClassName'
returns 'AnEx...Name'
```

And you can specify the size of the resulting string 
```Smalltalk
>>> (LabelContractor with: PickFirstLetters upTo: 6) reduce: 'AnExampleClassName'
returns 'AnExam'
```

If the string represent an absulte path and you want to preserve the path part:
```Smalltalk
>>> (LabelContractor with: Ellipsis ) 
							withPath: true; 
							reduce: 'A:/path/ClassName'
returns 'A:/path/Clas...Name'	
```