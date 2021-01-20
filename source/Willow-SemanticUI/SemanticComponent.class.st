"
A generic container for the div required by Semantic UI outside its components.
"
Class {
	#name : #SemanticComponent,
	#superclass : #WAPainter,
	#instVars : [
		'wrappedComponent',
		'commandToContainer'
	],
	#category : #'Willow-SemanticUI-WebViews'
}

{ #category : #'instance creation' }
SemanticComponent class >> wrapping: aComponent applying: aComponentCommand [

	^ self new
		initializeWrapping: aComponent
		applying: aComponentCommand asWebComponentCommand
]

{ #category : #'reflective operations' }
SemanticComponent >> doesNotUnderstand: aMessage [

	^ aMessage sendTo: wrappedComponent
]

{ #category : #initialization }
SemanticComponent >> initializeWrapping: aComponent applying: aComponentCommand [

	wrappedComponent := aComponent.
	commandToContainer := aComponentCommand
]

{ #category : #configuring }
SemanticComponent >> on [

	^ wrappedComponent on
]

{ #category : #rendering }
SemanticComponent >> renderContentOn: aCanvas [

	aCanvas div with: wrappedComponent applying: commandToContainer
]

{ #category : #testing }
SemanticComponent >> respondsTo: aSelector [

	^ wrappedComponent respondsTo: aSelector
]
