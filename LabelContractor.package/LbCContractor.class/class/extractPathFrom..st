removing
extractPathFrom: aString

	" for the strings representing a fully qualified name, return the 'path' part of the string"
	
	" LbCContractor extractPathFrom: 'A:example/path/file.ext' >>> 'A:example/path/' "
	" LbCContractor extractPathFrom: 'file.ext' >>> '' "

	| delimiter |
	delimiter := $/.
	^ aString copyFrom: 1 to: (aString lastIndexOf: delimiter)