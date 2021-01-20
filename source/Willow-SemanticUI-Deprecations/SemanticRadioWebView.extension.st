Extension { #name : #SemanticRadioWebView }

{ #category : #'*Willow-SemanticUI-Deprecations' }
SemanticRadioWebView >> onTrigger [

	self
		deprecated: 'Use #on instead.'
		transformWith: '`@receiver onTrigger' -> '`@receiver on trigger'.
	^ self on trigger
]
