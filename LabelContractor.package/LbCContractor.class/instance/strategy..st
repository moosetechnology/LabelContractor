accessing
strategy: aLbCStrategy

	"
		use this method if you want to use only one strategy.
		
		Examples:
			LbCContractor new strategy: LbCBaseNameStrategy new.
			LbCContractor new strategy: LbCPickFirstLettersStrategy new upTo: 10.
	"

	collectionOfStrategy reset.
	collectionOfStrategy add: aLbCStrategy