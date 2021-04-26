hooks
createLabel: aShape

	| label color set targetLabel |
	label := self shapeBuilderTemp shapeFor: (self modelFor: aShape).
	location stick: label on: aShape.
	isHighlightable ifFalse: [ ^ label ].
	targetLabel := target value: label.
	color := targetLabel color.
	targetLabel color: self lowColor.
	set := [ :c | 
	       label pushFront.
	       targetLabel color: c.
	       label signalUpdate ].
	aShape
		when: RSMouseEnter do: [ set value: color ];
		when: RSMouseLeave do: [ set value: lowColor ];
		when: RSShapeRemovedEvent do: [ label remove ].
	^ label