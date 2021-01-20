"
I'm a WALibary serving the files from the official CDN.
"
Class {
	#name : #SemanticUIOnlineLibrary,
	#superclass : #WAOnlineLibrary,
	#category : 'Willow-SemanticUI-Libraries'
}

{ #category : #Updating }
SemanticUIOnlineLibrary >> updateRoot: aRoot [

	aRoot stylesheet
		url:
			('https://cdnjs.cloudflare.com/ajax/libs/semantic-ui/<1s>/semantic.min.css'
				expandMacrosWith: self version);
		anonymousSubResourceIntegrity: 'sha256-/Z28yXtfBv/6/alw+yZuODgTbKZm86IKbPE/5kjO/xY='.
	aRoot javascript
		url:
			('https://cdnjs.cloudflare.com/ajax/libs/semantic-ui/<1s>/semantic.min.js'
				expandMacrosWith: self version);
		anonymousSubResourceIntegrity: 'sha256-Bhi6GMQ/72uYZcJXCJ2LToOIcN3+Cx47AZnq/Bw1f7A='
]

{ #category : #Accessing }
SemanticUIOnlineLibrary >> version [

	^'2.2.13'
]
