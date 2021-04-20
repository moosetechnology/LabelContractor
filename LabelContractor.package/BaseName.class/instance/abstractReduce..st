reduce-label
abstractReduce: aLabel

	" 
		Returns a reduced label according to the chosen strategy.
	"
	
	^ self class removeExtensionFrom: aLabel