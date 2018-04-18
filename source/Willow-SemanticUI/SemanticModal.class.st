"
A component to represent a Semantic UI modal (dialog).
"
Class {
	#name : #SemanticModal,
	#superclass : #WAPainter,
	#instVars : [
		'header',
		'footer',
		'dialog'
	],
	#category : 'Willow-SemanticUI-WebViews'
}

{ #category : #'instance creation' }
SemanticModal class >> withHeader: aModalHeader content: aBodyView footer: aModalFooter applyingToDialog: aDialogCommand [

	^ self new
		initializeWithHeader: aModalHeader
		content: aBodyView
		footer: aModalFooter
		applyingToDialog: aDialogCommand
]

{ #category : #'private - accessing' }
SemanticModal >> contentWrapping: aBodyView [

	^ [ :canvas | 
	canvas render: header.
	canvas div
		class: SemanticStyle for content;
		with: aBodyView.
	canvas render: footer ]
]

{ #category : #initialization }
SemanticModal >> initializeWithHeader: aModalHeader content: aBodyView footer: aModalFooter applyingToDialog: aDialogCommand [

	header := aModalHeader.
	footer := aModalFooter.
	dialog := GenericContainerWebView
		wrapping: (self contentWrapping: aBodyView)
		applying: [ :container | 
			(container addClass semantic: [ :style | style ui modal ])
				+ (container addScript js: [ :canvas | canvas jQuery this call: 'modal' with: 'show' ])
				+ aDialogCommand ]
]

{ #category : #configuring }
SemanticModal >> onTrigger [

	^ footer onTrigger
]

{ #category : #rendering }
SemanticModal >> renderContentOn: aCanvas [

	aCanvas render: dialog
]
