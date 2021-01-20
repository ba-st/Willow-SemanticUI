Extension { #name : #WebInteractionInterpreterTest }

{ #category : #'*Willow-SemanticUI-Tests' }
WebInteractionInterpreterTest >> testSerializeRelatedDialogForm [

	| interpreter html id |

	interpreter := self changeInterpreter.
	id := '15'.

	html := self
		renderUsing: [ :canvas | 
			| textInput |

			textInput := canvas textInput.
			textInput id: id.
			interpreter serializeRelatedDialogForm.
			interpreter applyTo: textInput on: canvas
			].

	self
		assert: html
		equals:
			'<input id="15" type="text"/><script type="text/javascript">$("#15").change(function(event){Willow.callServer({"type":"POST","url":"/","data":["1",$(this).closest("div.modal").find("form").serialize()].join("&")})});</script>'
]
