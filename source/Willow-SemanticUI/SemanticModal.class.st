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
	#pools : [
		'Willow'
	],
	#category : #'Willow-SemanticUI-WebViews'
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
SemanticModal >> cleanModalFunctionsOn: canvas [

	^ (canvas jQuery this remove
		, ((canvas jQuery id: Constants >> #willow >> #dialogSectionName) html: [ :aSubCanvas |  ]))
		asFunction
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
		applying:
			[ :container | (self styleCommandFor: container) + (self modalScriptCommandFor: container) + aDialogCommand ]
]

{ #category : #'private - accessing' }
SemanticModal >> modalScriptCommandFor: container [

	^ container addScript
		js: [ :canvas | 
			canvas jQuery this
				call: 'modal'
					with:
					(Dictionary new
						at: 'onHidden' put: (self cleanModalFunctionsOn: canvas);
						at: 'autofocus' put: false;
						at: 'allowMultiple' put: true;
						at: 'closable' put: false;
						yourself);
				call: 'modal' with: 'show' ]
]

{ #category : #configuring }
SemanticModal >> onTrigger [

	^ footer onTrigger
]

{ #category : #rendering }
SemanticModal >> renderContentOn: aCanvas [

	aCanvas render: dialog
]

{ #category : #'private - accessing' }
SemanticModal >> styleCommandFor: container [

	^ container addClass semantic: [ :style | style ui modal ]
]
