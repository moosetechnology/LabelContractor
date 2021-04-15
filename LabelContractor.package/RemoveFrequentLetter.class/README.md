I'm a remover of frequent letter in a label. I'm used to reduce the long label's name 

You can remove frequent letters from the label, for that use removeFrequentsLetters.
This method reduces the label to 3 characters by default, use 'removeFrequentsLetters:upTo:' if you want to change the size
>>> (LabelContractor new) removeFrequentsLetters: 'hello'
'hlo'

You can reduce label by removing extension:
>>> (LabelContractor new) removeExtension: 'AnExample.txt'
'AnExample'