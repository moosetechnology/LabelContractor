I'm an ellipsis strategy. I'm used to reduce long labels
 
You can reduce a label by keeping only the first and last 4 letters:
This method reduces the label by taking 4 letters in each sides, use 'ellipsis:size:' (class method) if you want to change the number of letters you want to keep
>>> (LabelContractor new) ellipsis: 'SWExampleWithExtension.txt'
'SWEx...sion.txt'
>>> (LabelContractor new) ellipsis: 'SWExampleWithExtension'
'SWEx...sion'
