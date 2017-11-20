private - rendering
renderInputFor: anElement asPartOf: aRadioGroup on: aCanvas

	| radioButton |

	radioButton := aRadioGroup radioButton.
	identifierAssigner withAssignedIdentifierDo: [ :id | radioButton id: id ].
	commandToComponent applyTo: radioButton on: aCanvas.
	interactionInterpreter applyTo: radioButton on: aCanvas.
	radioButton value: anElement.
	self renderLabelFor: anElement on: aCanvas