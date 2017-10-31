uploaded metadata
themesdefaultassetsfontsiconsOtf
	^ WAFileLibraryResource
		filepath: 'themes/default/assets/fonts/icons.otf'
		mimeType: (WAMimeType main: 'application' sub: 'octet-stream')
		cacheDuration: (Duration days: 0 hours: 0 minutes: 30 seconds: 0)
		contents: (GRDelayedSend receiver: self selector: #themesdefaultassetsfontsiconsOtfContent)