examples
exampleSpec: aLbCContractor

	   SpListPresenter new
		   items: Smalltalk globals allClasses;
		   display: [ :item | aLbCContractor reduce: item name  ];
		   openWithSpec