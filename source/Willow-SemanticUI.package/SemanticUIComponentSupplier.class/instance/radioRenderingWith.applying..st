Supplying
radioRenderingWith: aRenderingBlock applying: aCommandToComponent

	| radio |

	self
		deprecated: 'Please use #radioRenderingWith:applyingToLabel:applyingToInput:  instead'
		transformWith: '`@receiver radioRenderingWith: `@aRenderingBlock applying: `@aCommandToComponent' 
		    -> '`@receiver radioRenderingWith: `@aRenderingBlock applyingToLabel: `@aCommandToComponent applyingToInput: `@aCommandToComponent'.

	radio := SemanticRadioWebView 
				renderingWith: aRenderingBlock 
				applyingToLabel: aCommandToComponent
				applyingToInput: aCommandToComponent.

	^ SemanticComponent
		wrapping: radio
		applying: [ :container | container addClass semantic: [ :style | style inline fields ] ]