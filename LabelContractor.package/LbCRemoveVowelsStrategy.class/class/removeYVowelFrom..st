private
removeYVowelFrom: aString

	" remove all the letter 'y' which represent a vowel from a string"

	"LbCRemoveVowelsStrategy removeYVowelFrom: 'mystery' >>> 'mster'"
	"LbCRemoveVowelsStrategy removeYVowelFrom: 'yellow' >>> 'yellow'" "(because the 'y' is a consonant more than a vowel)"

	| indexesOfYVowel string |
	string := aString.
	indexesOfYVowel := self theIndexesOfTheLetterYAsAVowelFrom: string.
	^ indexesOfYVowel isEmpty
		  ifTrue: [ aString ]
		  ifFalse: [ 
			  | index |
			  index := indexesOfYVowel at: 1.
			  [ indexesOfYVowel isNotEmpty ] whileTrue: [ 
				  string := string copyReplaceFrom: index to: index with: ''.
				  indexesOfYVowel := self theIndexesOfTheLetterYAsAVowelFrom: string.
				  index := indexesOfYVowel at: 1 ifAbsent: [ index := 0 ] ].
			  string ]