"
The command to add a popup.
"
Class {
	#name : #SemanticPopup,
	#superclass : #WebComponentCommand,
	#instVars : [
		'content',
		'settings'
	],
	#category : 'Willow-SemanticUI-WebViews'
}

{ #category : #'instance creation' }
SemanticPopup class >> toDisplay: aContent [

	^ self new initializeToDisplay: aContent
]

{ #category : #processing }
SemanticPopup >> applyTo: aComponent on: aCanvas [

	self contentDataCommand applyTo: aComponent on: aCanvas.
	aComponent script: (self popupScriptOn: aCanvas)
]

{ #category : #'accessing - private' }
SemanticPopup >> contentDataCommand [

	^ ComponentMetadataCommand toDeclare: 'content' with: content
]

{ #category : #'initailize-release' }
SemanticPopup >> initializeSettings [

	settings := Dictionary new.
	settings at: 'inline' put: true
]

{ #category : #'initailize-release' }
SemanticPopup >> initializeToDisplay: aContent [

	content := aContent.
	self initializeSettings
]

{ #category : #'accessing - private' }
SemanticPopup >> popupFunctionName [

	^ 'popup'
]

{ #category : #'accessing - private' }
SemanticPopup >> popupScriptOn: aCanvas [

	^ aCanvas jQuery this call: self popupFunctionName with: settings
]
