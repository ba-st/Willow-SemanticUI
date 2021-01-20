"
I represent the header in a Semantic UI modal.
"
Class {
	#name : #SemanticModalHeader,
	#superclass : #WAPainter,
	#instVars : [
		'title'
	],
	#category : 'Willow-SemanticUI-WebViews'
}

{ #category : #'instance creation' }
SemanticModalHeader class >> dismissableTitled: aRenderable [

	^ self new initializeTitled: aRenderable
]

{ #category : #initialization }
SemanticModalHeader >> initializeTitled: aRenderable [

	title := aRenderable
]

{ #category : #rendering }
SemanticModalHeader >> renderContentOn: aCanvas [

	aCanvas icon class: SemanticStyle for close icon.
	aCanvas div
		class: SemanticStyle for header;
		with: title
]
