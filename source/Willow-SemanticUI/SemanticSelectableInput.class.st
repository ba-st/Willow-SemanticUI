"
A semantic combination of components, to allow toggling on/off the value of an input.
"
Class {
	#name : #SemanticSelectableInput,
	#superclass : #WAPainter,
	#instVars : [
		'checkboxView',
		'inputView',
		'componentCommand',
		'defaultModel'
	],
	#category : 'Willow-SemanticUI-WebViews'
}

{ #category : #'instance creation' }
SemanticSelectableInput class >> selecting: anInputView defaultingTo: aDefaultModel applying: aComponentCommand [

	^ self new
		initializeSelecting: anInputView
		defaultingTo: aDefaultModel
		applying: aComponentCommand asWebComponentCommand
]

{ #category : #'private - accessing' }
SemanticSelectableInput >> checkboxCommand [

	^ ComponentClassificationCommand toStyleWith: SemanticStyle for toggle
]

{ #category : #accessing }
SemanticSelectableInput >> content [

	^ checkboxView isChecked
		ifTrue: [ inputView content ]
		ifFalse: [ defaultModel ]
]

{ #category : #initialization }
SemanticSelectableInput >> initializeCheckboxView [

	checkboxView := SemanticCheckbox
		unlabeledInteractingThrough: WebInteractionInterpreter forClickOnHiddenInputDependentComponent
		applying: self checkboxCommand.
	checkboxView setCheckTo: true.
	checkboxView onTrigger
		toggleCssClass: SemanticStyle for disabled
		onComponentsMatching: [ :canvas | canvas jQuery this parent next ]
]

{ #category : #initialization }
SemanticSelectableInput >> initializeSelecting: anInputView defaultingTo: aDefaultModel applying: aComponentCommand [

	componentCommand := aComponentCommand.
	defaultModel := aDefaultModel.
	inputView := anInputView.
	self initializeCheckboxView
]

{ #category : #configuring }
SemanticSelectableInput >> onTrigger [

	^ CombinedWebInteractionInterpreter
		combiningInterpretersOf: (Array with: checkboxView with: inputView)
]

{ #category : #rendering }
SemanticSelectableInput >> renderContentOn: aCanvas [

	| containerComponent |

	containerComponent := aCanvas div.
	componentCommand applyTo: containerComponent on: aCanvas.
	containerComponent
		with: [ aCanvas
				render: checkboxView;
				render: inputView ]
]

{ #category : #configuring }
SemanticSelectableInput >> setContentTo: aModel [

	inputView setContentTo: aModel
]
