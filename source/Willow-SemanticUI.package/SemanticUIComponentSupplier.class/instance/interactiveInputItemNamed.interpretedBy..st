Supplying - Non Portable
interactiveInputItemNamed: aName interpretedBy: aTextCodec

	^ SemanticInput
		interpretedBy: aTextCodec
		interactingThrough: WebInteractionInterpreter forChangeInComponentValue
		applying: (SemanticPopup toDisplay: aName)