Extension { #name : #SemanticInput }

{ #category : #'*Willow-SemanticUI-Deprecations' }
SemanticInput >> onTrigger [

	self
		deprecated: 'Use #on instead.'
		transformWith: '`@receiver onTrigger' -> '`@receiver on trigger'.
	^ self on trigger
]
