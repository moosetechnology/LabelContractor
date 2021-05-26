I can substitute a substring or a collection of substrings with another ones.


Examples:
```Smalltalk
LbCContractor new 
	substitute: 'Superclasses' by: 'Sc';
	reduce: 'ClyMergedSuperclassesAndInheritedTraitsHierarchyTest'
```
returns 'ClyMergedScAndInheritedTraitsHierarchyTest'
