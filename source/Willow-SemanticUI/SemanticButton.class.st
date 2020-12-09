"
View for the button component in Semantic UI
"
Class {
	#name : #SemanticButton,
	#superclass : #WAPainter,
	#instVars : [
		'interactionInterpreter',
		'componentCommand',
		'label'
	],
	#category : 'Willow-SemanticUI-WebViews'
}

{ #category : #'instance creation' }
SemanticButton class >> labeled: aLabel interactingThrough: anInteractionInterpreter applying: aComponentCommand [

	^ self new
		initializeLabeled: aLabel
		interactingThrough: anInteractionInterpreter
		applying: aComponentCommand asWebComponentCommand
]

{ #category : #'initialize-release' }
SemanticButton >> initializeLabeled: aLabel interactingThrough: anInteractionInterpreter applying: aComponentCommand [

	label := aLabel.
	interactionInterpreter := anInteractionInterpreter.
	componentCommand := aComponentCommand
]

{ #category : #configuring }
SemanticButton >> onTrigger [

	^ interactionInterpreter
]

{ #category : #rendering }
SemanticButton >> renderContentOn: aCanvas [

	aCanvas button
		apply: componentCommand;
		interactUsing: interactionInterpreter;
		class: SemanticStyle ui button;
		with: label
]
