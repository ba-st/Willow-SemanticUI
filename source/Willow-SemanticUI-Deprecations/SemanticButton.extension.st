Extension { #name : #SemanticButton }

{ #category : #'*Willow-SemanticUI-Deprecations' }
SemanticButton >> onTrigger [

	self
		deprecated: 'Use #on instead.'
		transformWith: '`@receiver onTrigger' -> '`@receiver on trigger'.
	^ self on trigger
]
