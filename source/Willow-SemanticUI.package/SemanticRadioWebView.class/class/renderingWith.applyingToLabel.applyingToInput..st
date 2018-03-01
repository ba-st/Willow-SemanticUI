instance creation
renderingWith: aRenderingBlock applyingToLabel: aLabelCommand applyingToInput: anInputCommand

	^self new
			initializeRenderingWith: aRenderingBlock 
			applying: anInputCommand asWebComponentCommand
