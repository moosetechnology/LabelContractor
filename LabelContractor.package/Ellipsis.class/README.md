I'm an ellipsis strategy. I'm used to reduce the long labels
The strategy consists in keeping a certain first and last letters of the string separated by 3 points('...').

The strategy takes the total number of letters to keep, then the strategy will divide this number by 2; the first represents the number of the first letters and the second the number of the last letters. 

If the string contains an extension, then the extension is not taken into account in the reduction of the string, so it will be added at the end of the reduced string.

By default, the size of the ellipsis is defined at 8(that means: 4 first letters + '...' + 4 last letters) 
>>> (Ellipsis new) reduce: 'AnExampleOfClassName.txt'
AnEx...Name.txt

You can **change the default size** by another one, use 'ellipsisSize:' class method:
>>> (Ellipsis ellipsisSize: 10) reduce: 'AnExampleOfClassName.txt'
AnExa...sName.txt
