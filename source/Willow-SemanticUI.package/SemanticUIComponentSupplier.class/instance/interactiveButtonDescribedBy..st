Supplying - Non Portable
interactiveButtonDescribedBy: aString

	^ SemanticButton
		labeled: aString
		interactingThrough: WebInteractionInterpreter forClickOnComponent
		applying: [:theButton | ]