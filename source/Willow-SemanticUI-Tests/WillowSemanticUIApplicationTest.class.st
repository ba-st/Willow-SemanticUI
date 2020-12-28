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
			'<!DOCTYPE html><html lang="en"><head><title>The official testing app</title><script type="text/javascript" src="https://code.jquery.com/jquery-3.5.1.min.js" integrity="sha256-xNzN2a4ltkB44Mc/Jz3pT4iU1cmeR0FkXs4pru/JxaQ=" crossorigin="anonymous"></script><script type="text/javascript" src="/files/willow-8.0.1/js/willow.js"></script><meta name="viewport" content="width=device-width, initial-scale=1.0"/><link rel="stylesheet" type="text/css" href="https://cdnjs.cloudflare.com/ajax/libs/semantic-ui/2.2.13/semantic.min.css" integrity="sha256-/Z28yXtfBv/6/alw+yZuODgTbKZm86IKbPE/5kjO/xY=" crossorigin="anonymous"/><script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/semantic-ui/2.2.13/semantic.min.js" integrity="sha256-Bhi6GMQ/72uYZcJXCJ2LToOIcN3+Cx47AZnq/Bw1f7A=" crossorigin="anonymous"></script></head><body onload="onLoad()"><span><select name="1" id="id2"></select></span><div id="willow-dialog-section" class="willow-dialog-container"></div><div id="willow-notification-section"></div><script type="text/javascript">function onLoad(){$("#id2").dropdown();};</script></body></html>'
]
