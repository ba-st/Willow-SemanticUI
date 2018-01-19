Supplying
dropdownListApplying: aComponentCommand

	^ SemanticDropdown
		named: ''
		interactingThrough: WebInteractionInterpreter forChangeInComponentValue
		applying:
			[ :theDropdown | (theDropdown addClass semantic: [ :style | style item ]) + aComponentCommand ]