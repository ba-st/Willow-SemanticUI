instance creation
named: aName interactingThrough: anInteractionInterpreter applying: aComponentCommand

	^ self new
		initializeNamed: aName
		interactingThrough: anInteractionInterpreter
		applying: aComponentCommand asWebComponentCommand