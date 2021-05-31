"
baseline: spec

	   <baseline>
	   spec for: #common do: [ spec package: 'LabelContractor' ]
"
Class {
	#name : #BaselineOfLabelContractor,
	#superclass : #BaselineOf,
	#category : #BaselineOfLabelContractor
}

{ #category : #baselines }
BaselineOfLabelContractor >> baseline: spec [

	<baseline>
	spec for: #common do: [ 
		spec
			package: 'LabelContractor';
			package: 'LabelContractor-Tests'
			with: [ spec requires: 'LabelContractor' ];
			package: 'LabelContractor-Scripts'
			with: [ spec requires: 'LabelContractor' ] ].
	spec
		group: 'default'
		with: #( 'LabelContractor' 'LabelContractor-Tests' );
		group: 'full' with: #( 'default' 'LabelContractor-Scripts' )
]
