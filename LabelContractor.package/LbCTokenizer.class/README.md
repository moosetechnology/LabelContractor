I'm a tokenizer of strings.

Example of use:
>>> LCTokenizer new tokenizeWords: '23SomethingLike33' 
#('23'. 'Something'. 'Like33') asOrdredCollection

>>> LCTokenizer new tokenizeWords: 'SomethingOf43LikeOther' 
#('Something'. 'Of43'. 'Like'. 'Other')	 asOrdredCollection

>>> LCTokenizer new tokenizeWords: 'DFLSomething' 
#( 'DFL'. 'Something' ) asOrderedCollection