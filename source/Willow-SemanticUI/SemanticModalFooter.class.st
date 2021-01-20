"
I represent the footer in a Semantic UI modal.
"
Class {
	#name : #SemanticModalFooter,
	#superclass : #WAPainter,
	#instVars : [
		'buttons'
	],
	#category : #'Willow-SemanticUI-WebViews'
}

{ #category : #'instance creation' }
SemanticModalFooter class >> containing: aButtonCollection [

	^ self new initializeContaining: aButtonCollection
]

{ #category : #initialization }
SemanticModalFooter >> initializeContaining: aButtonCollection [

	buttons := aButtonCollection
]

{ #category : #configuring }
SemanticModalFooter >> on [

	^ CombinedEventInterpreterDispatcher combiningInterpretersOfAll: buttons
]

{ #category : #rendering }
SemanticModalFooter >> renderContentOn: aCanvas [

	buttons
		ifNotEmpty: [ aCanvas div
				class: SemanticStyle for actions;
				with: [ buttons do: [ :button | aCanvas render: button ] ] ]
]
