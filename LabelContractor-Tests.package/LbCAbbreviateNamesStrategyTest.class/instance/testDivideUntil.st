creation
testDivideUntil
	self
		assert:
			(aContractor
				divide: {'DM' . 'Class' . 'Names' . 'Blueprint' . 'Test' . 'Devide' . 'Until'}
				until: 4)
		equals:
			(Array
				with: {'DM' . 'Class' . 'Names' . 'Blueprint'}
				with: {'Test' . 'Devide' . 'Until'})