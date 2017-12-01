Supplying - Non Portable
dropdownListNamed: aName applying: aComponentCommand

	^ SemanticDropdown
		named: aName
		interactingThrough: WebInteractionInterpreter forChangeInComponentValue
		applying:
			[ :theDropdown | (theDropdown addClass semantic: [ :style | style item ]) + aComponentCommand ]