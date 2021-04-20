I'm a picker of label's name, i take the first letters of a string. 

By default I take the **first 8 letters**: (if the string contains an extension, then it's added at the end)
>>> (PickFirstLetters new) reduce: 'AnExampleOfClass.txt' 
AnExampl.txt

Or, you can use the '**pickFirstLetters:**' method
>>> (PickFirstLetters new) pickFirstLetters: 'AnExampleOfClass.txt'
AnExampl.txt 

And you can **change the default number** as following:
>>> (PickFirstLetters upTo: 4) reduce: 'AnExampleOfClass.txt' 
AnEx.txt

Or, you can use the '**pick:upTo:**' method  
>>> (PickFirstLetters new) pick: 'AnExampleOfClass.txt' upTo: 4
AnEx.txt