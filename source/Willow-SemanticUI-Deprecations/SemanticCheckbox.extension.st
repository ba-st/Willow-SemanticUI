Extension { #name : #SemanticCheckbox }

{ #category : #'*Willow-SemanticUI-Deprecations' }
SemanticCheckbox >> onTrigger [

	self
		deprecated: 'Use #on instead.'
		transformWith: '`@receiver onTrigger' -> '`@receiver on trigger'.
	^ self on trigger
]
