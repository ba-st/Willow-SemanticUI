private - accessing
semanticCheckboxScriptOn: aCanvas

	^ (aCanvas
		jQuery:
			('.<1p>.<2p>'
				expandMacrosWith: SemanticStyle ui
				with: SemanticStyle for checkbox)) call: 'checkbox'