"
baseline: spec

	   <baseline>
	   spec for: #common do: [ spec package: 'LabelContractor' ]
"
Class {
	#name : #BaselineOfLabelContractor,
	#superclass : #BaselineOf,
	#category : 'BaselineOfLabelContractor'
}

{ #category : #baselines }
BaselineOfLabelContractor >> baseline: spec [

	   <baseline>
	   spec for: #common do: [ spec package: 'LabelContractor' ].
		 spec group: 'default'  with: #('LabelContractor')
	
]
