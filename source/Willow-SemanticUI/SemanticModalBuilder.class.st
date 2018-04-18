"
I'm a builder easing the creation of Semantic UI modals.
"
Class {
	#name : #SemanticModalBuilder,
	#superclass : #WillowComponentBuilder,
	#instVars : [
		'headerBinding',
		'content',
		'dialogCommand',
		'footerButtons'
	],
	#category : 'Willow-SemanticUI-WebViews'
}

{ #category : #configuring }
SemanticModalBuilder >> addFooterButton: aButton [

	footerButtons add: aButton
]

{ #category : #configuring }
SemanticModalBuilder >> applyingToDialog: aDialogCommand [

	dialogCommand := dialogCommand + aDialogCommand
]

{ #category : #building }
SemanticModalBuilder >> buildApplying: aDocumentCommand [

	^ SemanticModal
		withHeader: headerBinding content
		content: content
		footer: (SemanticModalFooter containing: footerButtons)
		applyingToDialog: dialogCommand + aDocumentCommand
]

{ #category : #configuring }
SemanticModalBuilder >> dismissableHeaderTitled: aRenderable [

	headerBinding := Binding to: (SemanticModalHeader dismissableTitled: aRenderable)
]

{ #category : #initialization }
SemanticModalBuilder >> initialize [

	super initialize.
	headerBinding := Binding undefinedExplainedBy: 'Missing header definition'.
	content := ''.
	footerButtons := OrderedCollection new.
	dialogCommand := [  ] asWebComponentCommand
]

{ #category : #configuring }
SemanticModalBuilder >> wrapping: theContent [

	content := theContent 
]
