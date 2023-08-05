Class {
	#name : #SemanticUIOnlineLibraryTest,
	#superclass : #BWRenderingTest,
	#category : #'Willow-SemanticUI-Tests-Libraries'
}

{ #category : #'tests-Updating' }
SemanticUIOnlineLibraryTest >> testUpdateRoot [

	| html |

	html := WAHtmlCanvas builder
		        fullDocument: true;
		        rootBlock: [ :root | SemanticUIOnlineLibrary default updateRoot: root ];
		        render: [ :canvas |  ].

	self
		assert: html
		equals:
		'<html><head><title></title><link rel="stylesheet" type="text/css" href="https://cdnjs.cloudflare.com/ajax/libs/semantic-ui/2.5.0/semantic.min.css" integrity="sha256-cDGQ39yChhpN5vzgHbjIdGEtQ5kXE9tttCsI7VR9TuY=" crossorigin="anonymous"/><script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/semantic-ui/2.5.0/semantic.min.js" integrity="sha256-fN8vcX2ULyTDspVTHEteK8hd3rQAb5thNiwakjAW75Q=" crossorigin="anonymous"></script></head><body onload="onLoad()"><script type="text/javascript">function onLoad(){};</script></body></html>'
]
