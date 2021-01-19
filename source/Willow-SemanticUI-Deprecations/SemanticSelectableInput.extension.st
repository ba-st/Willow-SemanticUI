Extension { #name : #SemanticSelectableInput }

{ #category : #'*Willow-SemanticUI-Deprecations' }
SemanticSelectableInput >> onTrigger [

	self
		deprecated: 'Use #on instead.'
		transformWith: '`@receiver onTrigger' -> '`@receiver on trigger'.
	^ self on trigger
]
