private - accessing
containerComponentOn: aCanvas

	| containerComponent |

	containerComponent := aCanvas div class: SemanticStyle ui checkbox.
	componentCommand applyTo: containerComponent on: aCanvas.
	labelHolder
		withContentDo: [ :content |  ]
		ifUnused: [ containerComponent class: SemanticStyle for fitted ].
	^ containerComponent