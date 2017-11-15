private - configuring
configureValueOf: anInput

	chosenElementOptional
		withContentDo: [ :option | anInput value: (availableElements indexOf: option) ]
		ifUnused: [ :explanations |  ]