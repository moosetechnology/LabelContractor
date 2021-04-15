I'm a contractor of labels class. I reduce the labels following several strategies.

You can remove frequent letters from the label, for that use removeFrequentsLetters.
This method reduces the label to 3 characters by default, use 'removeFrequentsLetters:upTo:' if you want to change the size
>>> (LabelContractor new) removeFrequentsLetters: 'hello'
'hlo'	

You can reduce label by removing extension:
>>> (LabelContractor new) removeExtension: 'AnExample.txt'
'AnExample'

You can also remove the path part in a label:
>>> (LabelContractor new) noPath: 'A:example/Path/File.txt'
'File.txt'

If you want just the base name:
>>> (LabelContractor new) baseName: 'A:example/Path/File.txt'
'File'
>>> (LabelContractor new) baseName: 'File.txt'
'File

You can reduce a label by keeping only the first and last 4 letters:
This method reduces the label by taking 4 letters in each sides, use 'ellipsis:size:' (class method) if you want to change the number of letters you want to keep
>>> (LabelContractor new) ellipsis: 'SWExampleWithExtension.txt'
'SWEx...sion.txt'
>>> (LabelContractor new) ellipsis: 'SWExampleWithExtension'
'SWEx...sion'

Example with ellipsis:size:
>>> Labelellipsis:'SWExampleWithExtension.txt' size: 10
'SWExa...nsion.txt'

If you just want to keep some first letters:
>>> (labelContractor new) pick:'SWAnExampleOfClass.txt' upTo: 6
'SWAnEx'