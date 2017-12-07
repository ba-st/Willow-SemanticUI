building
buildApplying: aDocumentCommand

	^ SemanticModal
		withHeader: headerBinding content
		content: content
		footer: (SemanticModalFooter containing: footerButtons)
		applyingToDialog: dialogCommand + aDocumentCommand