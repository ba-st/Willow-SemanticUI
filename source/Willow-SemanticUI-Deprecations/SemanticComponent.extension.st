Extension { #name : #SemanticComponent }

{ #category : #'*Willow-SemanticUI-Deprecations' }
SemanticComponent >> onTrigger [

	self
		deprecated: 'Use #on instead.'
		transformWith: '`@receiver onTrigger' -> '`@receiver on trigger'.
	^ self on trigger
]
