instance creation
wrapping: aComponent applying: aComponentCommand

	^ self new
		initializeWrapping: aComponent
		applying: aComponentCommand asWebComponentCommand