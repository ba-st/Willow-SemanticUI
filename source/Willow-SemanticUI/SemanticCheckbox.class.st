"
View for the checkbox input component in Semantic UI
"
Class {
	#name : #SemanticCheckbox,
	#superclass : #WAPainter,
	#instVars : [
		'labelHolder',
		'interactionInterpreter',
		'isChecked',
		'componentCommand'
	],
	#category : #'Willow-SemanticUI-WebViews'
}

{ #category : #'instance creation' }
SemanticCheckbox class >> labeled: aLabel interactingThrough: anInteractionInterpreter [

	^ self
		labeledWithContentOf: (Optional containing: aLabel)
		interactingThrough: anInteractionInterpreter
		applying: CompositeComponentCommand empty
]

{ #category : #'private - instance creation' }
SemanticCheckbox class >> labeledWithContentOf: aHolder interactingThrough: anInteractionInterpreter applying: aComponentCommand [

	^ self new
		initializeLabeledWithContentOf: aHolder
		interactingThrough: anInteractionInterpreter
		applying: aComponentCommand asWebComponentCommand
]

{ #category : #'private - accessing' }
SemanticCheckbox class >> noLabelHolder [

	^ Optional unusedBecause: 'No label given'
]

{ #category : #'instance creation' }
SemanticCheckbox class >> unlabeledInteractingThrough: anInteractionInterpreter applying: aComponentCommand [

	^ self
		labeledWithContentOf: self noLabelHolder
		interactingThrough: anInteractionInterpreter
		applying: aComponentCommand
]

{ #category : #'private - configuring' }
SemanticCheckbox >> configureNameOf: anInput on: aCanvas [

	| componentName |

	componentName := (IdentifierAssigner prefixedBy: 'checkbox') identifierOn: aCanvas.
	anInput name: componentName
]

{ #category : #'private - accessing' }
SemanticCheckbox >> containerComponentOn: aCanvas [

	| containerComponent |

	containerComponent := aCanvas div class: SemanticStyle ui checkbox.
	containerComponent apply: componentCommand.
	labelHolder withContentDo: [ :content |  ] ifUnused: [ containerComponent class: SemanticStyle for fitted ].
	^ containerComponent
]

{ #category : #initialization }
SemanticCheckbox >> initializeLabeledWithContentOf: aHolder interactingThrough: anInteractionInterpreter applying: aComponentCommand [

	labelHolder := aHolder.
	interactionInterpreter := anInteractionInterpreter.
	isChecked := false.
	componentCommand := aComponentCommand
]

{ #category : #'private - rendering' }
SemanticCheckbox >> inputRenderedOn: aCanvas [

	^ aCanvas checkbox
		value: self isChecked;
		callback: [ :aBoolean | self setCheckTo: aBoolean ];
		interactUsing: interactionInterpreter;
		yourself
]

{ #category : #testing }
SemanticCheckbox >> isChecked [

	^ isChecked
]

{ #category : #configuring }
SemanticCheckbox >> on [

	^ interactionInterpreter
]

{ #category : #configuring }
SemanticCheckbox >> onTrigger [

	self
		deprecated: 'Use #on instead.'
		transformWith: '`@receiver onTrigger' -> '`@receiver on trigger'.
	^ self on trigger
]

{ #category : #rendering }
SemanticCheckbox >> renderContentOn: aCanvas [

	| containerComponent |

	containerComponent := self containerComponentOn: aCanvas.
	containerComponent
		with: [ | input |

			input := self inputRenderedOn: aCanvas.
			self renderLabelFor: ( input identifierOn: aCanvas ) on: aCanvas
			]
]

{ #category : #'private - rendering' }
SemanticCheckbox >> renderLabelFor: anIdentifier on: aCanvas [

	| labelComponent |

	labelComponent := aCanvas label.
	labelHolder
		withContentDo: [ :aLabel | 
			labelComponent
				for: anIdentifier;
				with: aLabel ]
		ifUnused: [ :explanations |  ]
]

{ #category : #configuring }
SemanticCheckbox >> setCheckTo: aBoolean [

	isChecked := aBoolean
]
