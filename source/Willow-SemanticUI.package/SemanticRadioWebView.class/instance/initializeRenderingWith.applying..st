initialization
initializeRenderingWith: aRenderingBlock applying: anInputCommand

	renderingBlock := aRenderingBlock.
	inputCommand := anInputCommand.

	interactionInterpreter := WebInteractionInterpreter forChangeInComponentValue.
	identifierAssigner := IdentifierAssigner prefixedBy: 'radio-button'