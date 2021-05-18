accessing
strategy: aLbCStrategy

	"
		use me if you want to use only one strategy.
		
		Examples:
			LbCContractor new strategy: LbCBaseNameStrategy new.
			LbCContractor new strategy: LbCPickFirstLettersStrategy new upTo: 10.
	"

	collectionOfStrategy reset.
	collectionOfStrategy add: aLbCStrategy