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

{ #category : #configuring }
SemanticModalFooter >> onTrigger [

	self
		deprecated: 'Use #on instead.'
		transformWith: '`@receiver onTrigger' -> '`@receiver on trigger'.
	^ self on trigger
]

{ #category : #rendering }
SemanticModalFooter >> renderContentOn: aCanvas [

	buttons
		ifNotEmpty: [ aCanvas div
				class: SemanticStyle for actions;
				with: [ buttons do: [ :button | aCanvas render: button ] ] ]
]
