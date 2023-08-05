"
I'm a WALibary serving the files from the official CDN.
"
Class {
	#name : #SemanticUIOnlineLibrary,
	#superclass : #WAOnlineLibrary,
	#category : #'Willow-SemanticUI-Libraries'
}

{ #category : #Updating }
SemanticUIOnlineLibrary >> updateRoot: aRoot [

	aRoot stylesheet
		url:
			( 'https://cdnjs.cloudflare.com/ajax/libs/semantic-ui/<1s>/semantic.min.css' expandMacrosWith:
					  self version );
		anonymousSubResourceIntegrity: 'sha256-cDGQ39yChhpN5vzgHbjIdGEtQ5kXE9tttCsI7VR9TuY='.
	aRoot javascript
		url:
			( 'https://cdnjs.cloudflare.com/ajax/libs/semantic-ui/<1s>/semantic.min.js' expandMacrosWith:
					  self version );
		anonymousSubResourceIntegrity: 'sha256-fN8vcX2ULyTDspVTHEteK8hd3rQAb5thNiwakjAW75Q='
]

{ #category : #Accessing }
SemanticUIOnlineLibrary >> version [

	^'2.5.0'
]
