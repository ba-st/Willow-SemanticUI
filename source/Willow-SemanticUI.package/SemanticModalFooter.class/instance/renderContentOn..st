rendering
renderContentOn: aCanvas

	buttons
		ifNotEmpty: [ aCanvas div
				class: SemanticStyle for actions;
				with: [ buttons
						do: [ :button | 
							button identifyIn: aCanvas.
							aCanvas render: button ] ] ]