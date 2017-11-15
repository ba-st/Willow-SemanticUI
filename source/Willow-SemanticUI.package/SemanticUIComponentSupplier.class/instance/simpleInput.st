Supplying - Non Portable
simpleInput

	^ SemanticInput
		interpretedBy: NullCodec new
		interactingThrough:
			(WebInteractionInterpreter
				workingWith: WebComponentInteraction neverTriggered)
		applying: [:theInput | ]