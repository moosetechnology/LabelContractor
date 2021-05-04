I'm a picker of label's name, i take the first letters of a string. 
If the string contains an extension, then we keep it.

By default I take the **first 8 letters**: 
>>> PickFirstLetters new reduce: 'AnExampleOfClass.txt' 
'AnExampl.txt'

And you can **change the default number** as following:
>>> PickFirstLetters new 
       upTo: 4;
    		reduce: 'AnExampleOfClass.txt' 
'AnEx.txt'

An example of string without extension:
>>> PickFirstLetters new 
       upTo: 4;
    		reduce: 'AnExampleOfClass'
'AnEx'		 