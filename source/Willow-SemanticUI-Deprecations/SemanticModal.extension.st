Extension { #name : #SemanticModal }

{ #category : #'*Willow-SemanticUI-Deprecations' }
SemanticModal >> onTrigger [

	self
		deprecated: 'Use #on instead.'
		transformWith: '`@receiver onTrigger' -> '`@receiver on trigger'.
	^ self on trigger
]
