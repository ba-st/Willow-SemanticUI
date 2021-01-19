Extension { #name : #SemanticDropdown }

{ #category : #'*Willow-SemanticUI-Deprecations' }
SemanticDropdown >> onTrigger [

	self
		deprecated: 'Use #on instead.'
		transformWith: '`@receiver onTrigger' -> '`@receiver on trigger'.
	^ self on trigger
]
