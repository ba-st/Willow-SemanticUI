initialization
initialize

	super initialize.
	headerBinding := Binding undefinedExplainedBy: 'Missing header definition'.
	content := ''.
	footerButtons := OrderedCollection new.
	dialogCommand := [  ] asWebComponentCommand