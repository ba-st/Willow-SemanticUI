Extension { #name : #CombinedWebInteractionInterpreter }

{ #category : #'*Willow-SemanticUI' }
CombinedWebInteractionInterpreter >> serializeRelatedDialogForm [

	self interpretersDo: [:interpreter | interpreter serializeRelatedDialogForm]
]
