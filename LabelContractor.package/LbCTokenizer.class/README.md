I'm a tokenizer of strings.

**Example 1:**
```Smalltalk
LbCTokenizer new tokenize: '23SomethingLike33' 
```
returns #('23'. 'Something'. 'Like33') asOrdredCollection

**Example 2:**
```Smalltalk
LbCTokenizer new tokenize: 'SomethingOf43LikeOther' 
```
returns #('Something'. 'Of43'. 'Like'. 'Other')	 asOrdredCollection

**Example 3:**
```Smalltalk
LbCTokenizer new tokenize: 'DFLSomething' 
```
returns #( 'DFL'. 'Something' ) asOrderedCollection