I'm the BaseName class. I'm used to reduce labels to keep its base name 

Use the method #reduce:
>>> BaseName reduce: 'A:example/path/AnExampleOfClassName.txt'
'AnExampleOfClassName'

>>> BaseName reduce: 'AnExampleOfClassName.txt'
'AnExampleOfClassName'