private-algorithm
keepFirstLetter: string

	   "
		 	We keep the first letter to make the reduction more understandable.
			Therefore, we return the rest of the string from index 2.
		 "

	   ^ string copyFrom: 2 to: string size