Class: LbCBaseNameStrategy
                                                                                                    

Class: LbCBaseNameStrategy
                                                                                                    

I'm the BaseName class. I'm used to reduce labels to keep its base name

Examples:

| baseNameStrategy |
baseNameStrategy := LbCBaseNameStrategy new .
LbCContractor new
 strategy: baseNameStrategy;
 reduce: 'A:path/HashedCollection.class'.  

returns 'HashedCollection'

An other example:

| baseNameStrategy |
baseNameStrategy := LbCBaseNameStrategy new .
LbCContractor new
 strategy: baseNameStrategy;
 reduce: 'HashedCollection.class'.  

returns 'HashedCollection'
