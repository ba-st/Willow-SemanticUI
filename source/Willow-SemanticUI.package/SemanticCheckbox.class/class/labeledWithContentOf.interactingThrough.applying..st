private - instance creation
labeledWithContentOf: aHolder interactingThrough: anInteractionInterpreter applying: aComponentCommand

	^ self new
		initializeLabeledWithContentOf: aHolder
		interactingThrough: anInteractionInterpreter
		applying: aComponentCommand asWebComponentCommand