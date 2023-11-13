Class {
	#name : #WillowSemanticUIApplicationTest,
	#superclass : #BWRenderingTest,
	#category : #'Willow-SemanticUI-Tests-Applications'
}

{ #category : #accessing }
WillowSemanticUIApplicationTest >> componentSupplier [

	^ SemanticUIComponentSupplier online
]

{ #category : #accessing }
WillowSemanticUIApplicationTest >> createHandlers [

	^ Array with: self
]

{ #category : #accessing }
WillowSemanticUIApplicationTest >> isSession [

	^ true
]

{ #category : #accessing }
WillowSemanticUIApplicationTest >> preferenceAt: aKey ifAbsent: aBlock [

	^ aBlock value
]

{ #category : #tests }
WillowSemanticUIApplicationTest >> testRenderContentOnWithSemanticUI [

	| html application |

	application := WillowTestingApplication using: self componentSupplier.
	html := self fullDocumentRendering: application.

	self
		assert: html
		equals:
		'<!DOCTYPE html><html lang="en"><head><title>The official testing app</title><script type="text/javascript" src="https://code.jquery.com/jquery-3.7.0.min.js" integrity="sha256-2Pmvv0kuTBOenSvLm6bvfBSSHrUJ+3A7x6P5Ebd07/g=" crossorigin="anonymous"></script><script type="text/javascript" src="/files/willow-8.0.1/js/willow.js"></script><meta name="viewport" content="width=device-width, initial-scale=1.0"/><link rel="stylesheet" type="text/css" href="https://cdnjs.cloudflare.com/ajax/libs/semantic-ui/2.5.0/semantic.min.css" integrity="sha256-cDGQ39yChhpN5vzgHbjIdGEtQ5kXE9tttCsI7VR9TuY=" crossorigin="anonymous"/><script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/semantic-ui/2.5.0/semantic.min.js" integrity="sha256-fN8vcX2ULyTDspVTHEteK8hd3rQAb5thNiwakjAW75Q=" crossorigin="anonymous"></script></head><body onload="onLoad()"><span><select name="1" id="id2"></select></span><div id="willow-dialog-section" class="willow-dialog-container"></div><div id="willow-notification-section"></div><script type="text/javascript">function onLoad(){$("#id2").dropdown();};</script></body></html>'
]
