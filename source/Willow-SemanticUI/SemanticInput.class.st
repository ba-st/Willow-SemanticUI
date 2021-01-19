"
A component to represent a Semantic UI input.
"
Class {
	#name : #SemanticInput,
	#superclass : #WAPainter,
	#instVars : [
		'componentCommand',
		'interactionInterpreter',
		'content',
		'currentInputIdentifier',
		'textCodec'
	],
	#category : #'Willow-SemanticUI-WebViews'
}

{ #category : #'instance creation' }
SemanticInput class >> interpretedBy: aTextCodec interactingThrough: anInteractionInterpreter applying: aComponentCommand [

	^ self new
		initializeInterpretedBy: aTextCodec
		interactingThrough: anInteractionInterpreter
		applying: aComponentCommand asWebComponentCommand
]

{ #category : #'private - rendering' }
SemanticInput >> assignIdentifierTo: anInput on: aCanvas [

	currentInputIdentifier := (IdentifierAssigner prefixedBy: 'input') identifierOn: aCanvas.

	anInput id: currentInputIdentifier
]

{ #category : #accessing }
SemanticInput >> content [

	^ textCodec decode: content
]

{ #category : #accessing }
SemanticInput >> identifierOn: aCanvas [

	^ currentInputIdentifier
]

{ #category : #initialization }
SemanticInput >> initializeInterpretedBy: aTextCodec interactingThrough: anInteractionInterpreter applying: aComponentCommand [

	textCodec := aTextCodec.
	interactionInterpreter := anInteractionInterpreter.
	currentInputIdentifier := ''.
	componentCommand := self uiInputStyleCommand + aComponentCommand.
	self setUninterpretedContentTo: ''
]

{ #category : #configuring }
SemanticInput >> on [

	^ interactionInterpreter
]

{ #category : #rendering }
SemanticInput >> renderContentOn: aCanvas [

	aCanvas div with: [ self renderInputOn: aCanvas ] applying: componentCommand
]

{ #category : #'private - rendering' }
SemanticInput >> renderInputOn: aCanvas [

	| input |

	input := aCanvas textInput.
	self assignIdentifierTo: input on: aCanvas.
	input
		value: self content;
		callback: [ :string | self setUninterpretedContentTo: string ];
		interactUsing: interactionInterpreter
]

{ #category : #accessing }
SemanticInput >> setContentTo: aModel [

	self setUninterpretedContentTo: (textCodec encode: aModel)
]

{ #category : #'private - accessing' }
SemanticInput >> setUninterpretedContentTo: aString [

	content := aString
]

{ #category : #'private - accessing' }
SemanticInput >> uiInputStyleCommand [

	^ ComponentClassificationCommand toStyleWith: SemanticStyle ui input
]
