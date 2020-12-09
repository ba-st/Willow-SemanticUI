Extension { #name : #ComponentClassificationCommandBuilder }

{ #category : #'*Willow-SemanticUI' }
ComponentClassificationCommandBuilder >> semantic: aBlock [

	| style |

	style := SemanticStyle new.
	aBlock value: style.
	^ ComponentClassificationCommand toStyleWith: style
]
