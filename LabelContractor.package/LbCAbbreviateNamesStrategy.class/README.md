I am the strategy which takes the initial letter of each name except the last one.
By default i abbreviate only the first 3 names(you can change this value by using **#until: anInteger** or **#upTo: anInteger**) .

**Note:** The last word is never abbreviated, even if the 'until or upTo' is too big than the string names(see the first example)

**instance variables:**
- tokenizer: it allows you to cut a string into several substrings 
- until: it designates the number of words for which we want to keep their first letters

**Example 1:** By default we abbreviate the first 3 names but the string in example contains only two names('Hashed' and 'Collection'), so we abbreviate only the first name (the last is always not abbreviated).
```Smalltalk
| abbreviateStrategy |
abbreviateStrategy := LbCAbbreviateNamesStrategy new.
LbCContractor new
	strategy: abbreviateStrategy;
	reduce: 'HashedCollection'.		
```
returns 'HCollection'

**Example 2:**
```Smalltalk
| abbreviateStrategy |
abbreviateStrategy := LbCAbbreviateNamesStrategy new until: 4.
LbCContractor new
	strategy: abbreviateStrategy;
	reduce: 'AnExampleOfSomethingVeryLong'.		
```
returns 'AEOSVeryLong'


