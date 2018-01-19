Supplying
radioRenderingWith: aRenderingBlock applying: aCommandToComponent

	| radio |

	radio := SemanticRadioWebView renderingWith: aRenderingBlock applying: aCommandToComponent.

	^ SemanticComponent
		wrapping: radio
		applying: [ :container | container addClass semantic: [ :style | style inline fields ] ]