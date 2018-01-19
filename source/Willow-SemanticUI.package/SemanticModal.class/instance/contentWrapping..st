private - accessing
contentWrapping: aBodyView

	^ [ :canvas | 
	canvas render: header.
	canvas div
		class: SemanticStyle for content;
		with: aBodyView.
	canvas render: footer ]