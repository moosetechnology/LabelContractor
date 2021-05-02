I'm an ellipsis strategy. I'm used to reduce the long labels
The strategy consists in keeping a certain first and last letters of the string separated by 2 points('..').

- If the string contains an extension, then the extension is not taken into account in the reduction of the string, so it will be added at the end of the reduced string.

- If the string contains 
By default, the size of the ellipsis is defined at 8(that means: 4 first letters + '..' + 4 last letters) 
>>> Ellipsis reduce: 'AnExampleOfClassName.txt'
'AnEx...Name.txt'

You can **change the default size** by another one, use #upTo: class method:
>>> (Ellipsis upTo: 10) reduce: 'AnExampleOfClassName.txt'
'AnExa...sName.txt'

>>> (Ellipsis upTo: 9) reduce: 'AnExampleOfClassName'
'AnEx..sName'