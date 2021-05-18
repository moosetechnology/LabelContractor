adding
addStrategy: aLbCStrategy

	"
		Use me if you want to use the sequential combination of multiple strategies.
		i'm adding a strategy to an ordered collection so that i can apply the strategies one by one.
		
		Examples:
			LbCContractor new 
				addStrategy: LbCBaseNameStrategy new;
				addStrategy: LbCPickFirstLettersStrategy new;
				addStrategy: (LbCRemovePrefixStrategy new with: 'some').
	"

	collectionOfStrategy add: aLbCStrategy