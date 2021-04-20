I'm a remover of frequent letter in a label. I'm used to reduce the long label's name 

If the string contains an extension, then i will not consider the 'extension part' in the reduction. In addition, the result will contain the extension added at the end.

By default, i reduce the label's name until it has a size of 8 characters.
>>> (RemoveFrequentLetter new) reduce: 'AnExampleOfAClassName.txt'
xmpOfClm.txt

Or, you can use the '**removeFrequentLetters: **' method:
>>> (RemoveFrequentLetter new) removeFrequentLetters: 'AnExampleOfAClassName.txt'
xmpOfClm.txt

You can change the size of the resulting string:
>>> (RemoveFrequentLetter upTo: 10) reduce: 'AnExampleOfAClassName.txt'
xmplOfClNm.txt

In the same way, you can use the '**removeFrequentLetters: **' method:
>>> (RemoveFrequentLetter upTo: 10) removeFrequentLetters: 'AnExampleOfAClassName.txt'
xmplOfClNm.txt