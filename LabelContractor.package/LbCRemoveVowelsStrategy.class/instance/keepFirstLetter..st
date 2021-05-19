private-algorithm
keepFirstLetter: string

	" i keep the first letter of the string to make the reduction more understandable.
		Therefore, i return the rest of the string from index 2. "

	^ string copyFrom: 2 to: string size