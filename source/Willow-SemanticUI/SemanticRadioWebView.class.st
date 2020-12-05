"
A component to represent a Semantic UI set of buttons that behaves like a radio button.
"
Class {
	#name : #SemanticRadioWebView,
	#superclass : #SingleSelectionWebViewBehavior,
	#instVars : [
		'renderingBlock',
		'interactionInterpreter',
		'identifierAssigner',
		'inputCommand'
	],
	#category : 'Willow-SemanticUI-WebViews'
}

{ #category : #'instance creation' }
SemanticRadioWebView class >> renderingWith: aRenderingBlock applyingToLabel: aLabelCommand applyingToInput: anInputCommand [

	^self new
			initializeRenderingWith: aRenderingBlock 
			applying: anInputCommand asWebComponentCommand

]

{ #category : #initialization }
SemanticRadioWebView >> initializeRenderingWith: aRenderingBlock applying: anInputCommand [

	renderingBlock := aRenderingBlock.
	inputCommand := anInputCommand.

	interactionInterpreter := WebInteractionInterpreter forChangeInComponentValue.
	identifierAssigner := IdentifierAssigner prefixedBy: 'radio-button'
]

{ #category : #configuring }
SemanticRadioWebView >> onTrigger [

	^ interactionInterpreter
]

{ #category : #rendering }
SemanticRadioWebView >> renderContentOn: aCanvas [

	aCanvas radioGroup
		callback: [ :element | self choose: element ];
		with: [ :radioGroup | 
			chosenElementOptional
				withContentDo: [ :chosenElement | radioGroup selected: chosenElement ].
			availableElements
				do: [ :element | self renderRadioButtonFor: element asPartOf: radioGroup on: aCanvas ] ].

	aCanvas document addLoadScript: (self semanticCheckboxScriptOn: aCanvas)
]

{ #category : #'private - rendering' }
SemanticRadioWebView >> renderDivOn: aCanvas with: aRenderable [

	aCanvas div
		class: SemanticStyle for field;
		with: [ aCanvas div
				class: SemanticStyle ui radio checkbox;
				with: aRenderable ]
]

{ #category : #'private - rendering' }
SemanticRadioWebView >> renderInputFor: anElement asPartOf: aRadioGroup on: aCanvas [

	| radioButton |

	radioButton := aRadioGroup radioButton.
	identifierAssigner withAssignedIdentifierDo: [ :id | radioButton id: id ].
	radioButton
		apply: inputCommand;
		interactUsing: interactionInterpreter;
		value: anElement.
	self renderLabelFor: anElement on: aCanvas
]

{ #category : #'private - rendering' }
SemanticRadioWebView >> renderLabelFor: anElement on: aCanvas [

	aCanvas label: (renderingBlock value: anElement)
]

{ #category : #'private - rendering' }
SemanticRadioWebView >> renderRadioButtonFor: anElement asPartOf: aRadioGroup on: aCanvas [

	self
		renderDivOn: aCanvas
		with: [ self renderInputFor: anElement asPartOf: aRadioGroup on: aCanvas ]
]

{ #category : #'private - accessing' }
SemanticRadioWebView >> semanticCheckboxScriptOn: aCanvas [

	^ (aCanvas
		jQuery:
			('.<1p>.<2p>'
				expandMacrosWith: SemanticStyle ui
				with: SemanticStyle for checkbox)) call: 'checkbox'
]
