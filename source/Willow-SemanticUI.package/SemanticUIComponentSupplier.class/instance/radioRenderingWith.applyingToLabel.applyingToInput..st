Supplying
radioRenderingWith: aRenderingBlock applyingToLabel: aLabelCommand applyingToInput: anInputCommand

	| radio |

	radio := SemanticRadioWebView 
				renderingWith: aRenderingBlock 
				applyingToLabel: aLabelCommand
				applyingToInput: anInputCommand.

	^ SemanticComponent
		wrapping: radio
		applying: [ :container | container addClass semantic: [ :style | style inline fields ] ]