"
View for the select component in Semantic UI
"
Class {
	#name : #SemanticDropdown,
	#superclass : #SingleSelectionWebViewBehavior,
	#instVars : [
		'name',
		'interactionInterpreter',
		'componentCommand'
	],
	#category : #'Willow-SemanticUI-WebViews'
}

{ #category : #'instance creation' }
SemanticDropdown class >> named: aName interactingThrough: anInteractionInterpreter applying: aComponentCommand [

	^ self new
		initializeNamed: aName
		interactingThrough: anInteractionInterpreter
		applying: aComponentCommand asWebComponentCommand
]

{ #category : #'private - configuring' }
SemanticDropdown >> chooseOptionAt: anIndex [

	self chooseEqualTo: (availableElements at: anIndex)
]

{ #category : #'private - configuring' }
SemanticDropdown >> configureCallbackOf: anInput [

	anInput callback: [ :indexString | self chooseOptionAt: indexString asNumber ]
]

{ #category : #'private - configuring' }
SemanticDropdown >> configureValueOf: anInput [

	chosenElementOptional
		withContentDo: [ :option | anInput value: (availableElements indexOf: option) ]
		ifUnused: [ :explanations |  ]
]

{ #category : #'private - accessing' }
SemanticDropdown >> dropdownScriptOn: aCanvas [

	^ aCanvas jQuery this call: 'dropdown'
]

{ #category : #initialization }
SemanticDropdown >> initializeNamed: aName interactingThrough: anInteractionInterpreter applying: aComponentCommand [

	name := aName.
	interactionInterpreter := anInteractionInterpreter.
	componentCommand := aComponentCommand
]

{ #category : #configuring }
SemanticDropdown >> on [

	^ interactionInterpreter
]

{ #category : #'private - rendering' }
SemanticDropdown >> render: option asOptionAt: index on: aCanvas [

	aCanvas div
		class: SemanticStyle for item;
		attributeAt: 'data-value' put: index;
		with: option
]

{ #category : #rendering }
SemanticDropdown >> renderContentOn: aCanvas [

	aCanvas div
		apply: componentCommand;
		class: SemanticStyle ui selection dropdown item;
		script: (self dropdownScriptOn: aCanvas);
		with: [ self renderInputOn: aCanvas.
			self renderIconOn: aCanvas.
			self renderNameOn: aCanvas.
			self renderOptionsOn: aCanvas ]
]

{ #category : #'private - rendering' }
SemanticDropdown >> renderIconOn: aCanvas [

	aCanvas icon class: SemanticStyle for dropdown icon
]

{ #category : #'private - rendering' }
SemanticDropdown >> renderInputOn: aCanvas [

	| component |

	component := aCanvas hiddenInput.
	self configureValueOf: component.
	self configureCallbackOf: component.
	component interactUsing: interactionInterpreter
]

{ #category : #'private - rendering' }
SemanticDropdown >> renderNameOn: aCanvas [

	aCanvas div
		class: SemanticStyle for default text;
		with: name
]

{ #category : #'private - rendering' }
SemanticDropdown >> renderOptionsOn: aCanvas [

	aCanvas div
		class: SemanticStyle for menu;
		with: [ availableElements 
				doWithIndex: [ :option :index | self render: option asOptionAt: index on: aCanvas ] ]
]
