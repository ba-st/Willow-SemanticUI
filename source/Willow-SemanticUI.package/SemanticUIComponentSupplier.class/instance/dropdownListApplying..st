Supplying
dropdownListApplying: aComponentCommand

	^ SemanticDropdown
		named: ''
		offering: #()
		interactingThrough: WebInteractionInterpreter forChangeInComponentValue
		applying: (ComponentClassificationCommand toStyleWith: SemanticStyle for item) + aComponentCommand