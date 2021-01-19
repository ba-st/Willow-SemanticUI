Extension { #name : #SemanticModalFooter }

{ #category : #'*Willow-SemanticUI-Deprecations' }
SemanticModalFooter >> onTrigger [

	self
		deprecated: 'Use #on instead.'
		transformWith: '`@receiver onTrigger' -> '`@receiver on trigger'.
	^ self on trigger
]
