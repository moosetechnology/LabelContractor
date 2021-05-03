creation
testDevideUntil
	self
		assert:
			(aContractor
				devide: {'DM' . 'Class' . 'Names' . 'Blueprint' . 'Test' . 'Devide' . 'Until'}
				until: 4)
		equals:
			(Array
				with: {'DM' . 'Class' . 'Names' . 'Blueprint'}
				with: {'Test' . 'Devide' . 'Until'})