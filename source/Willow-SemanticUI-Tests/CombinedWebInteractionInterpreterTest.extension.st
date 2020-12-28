Extension { #name : #CombinedWebInteractionInterpreterTest }

{ #category : #'*Willow-SemanticUI-Tests' }
CombinedWebInteractionInterpreterTest >> testSerializeRelatedDialogForm [

	| interpreter html |

	interpreter := self combinedInterpreter.

	interpreter serializeRelatedDialogForm.
	html := self
		renderUsing: [ :canvas | 
			canvas
				render: okButton;
				render: cancelButton
			].
	self
		assert: html
		equals:
			'<button id="button-id2" type="button">Ok</button><button id="button-id4" type="button">Cancel</button><script type="text/javascript">$("#button-id2").click(function(event){Willow.callServer({"type":"POST","url":"/","data":["1",$(this).closest("div.modal").find("form").serialize()].join("&")})});$("#button-id4").click(function(event){Willow.callServer({"type":"POST","url":"/","data":["3",$(this).closest("div.modal").find("form").serialize()].join("&")})});</script>'
]
