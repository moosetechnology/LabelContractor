private-algorithm
keepFirstAndLastLetter: string

	   "
		 	we keep the first and last letter of the string, so that the reduction is more understandable.
		 "

	   ^ string copyFrom: 2 to: string size - 1