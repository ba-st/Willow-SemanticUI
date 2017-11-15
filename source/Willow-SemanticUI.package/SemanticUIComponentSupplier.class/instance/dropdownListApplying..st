Supplying
dropdownListApplying: aComponentCommand

	^ SemanticDropdown
		named: ''
		interactingThrough: WebInteractionInterpreter forChangeInComponentValue
		applying: [ :theDropdown | theDropdown semantic item + aComponentCommand ]