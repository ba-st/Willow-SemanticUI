instance creation
withHeader: aModalHeader content: aBodyView footer: aModalFooter applyingToDialog: aDialogCommand

	^ self new
		initializeWithHeader: aModalHeader
		content: aBodyView
		footer: aModalFooter
		applyingToDialog: aDialogCommand