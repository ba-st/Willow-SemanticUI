initialization
initializeWithHeader: aModalHeader content: aBodyView footer: aModalFooter applyingToDialog: aDialogCommand

	header := aModalHeader.
	footer := aModalFooter.
	dialog := GenericContainerWebView
		wrapping: (self contentWrapping: aBodyView)
		applying: [ :container | 
			(container addClass semantic: [ :style | style ui modal ])
				+ (container addScript js: [ :canvas | canvas jQuery this call: 'modal' with: 'show' ])
				+ aDialogCommand ]