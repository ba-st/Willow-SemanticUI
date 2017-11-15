private - rendering
renderOptionsOn: aCanvas

	aCanvas div
		class: SemanticStyle for menu;
		with: [ availableElements 
				doWithIndex: [ :option :index | self render: option asOptionAt: index on: aCanvas ] ]