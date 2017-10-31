uploaded metadata
themesdefaultassetsfontsiconsWoff2
	^ WAFileLibraryResource
		filepath: 'themes/default/assets/fonts/icons.woff2'
		mimeType: (WAMimeType main: 'application' sub: 'octet-stream')
		cacheDuration: (Duration days: 0 hours: 0 minutes: 30 seconds: 0)
		contents: (GRDelayedSend receiver: self selector: #themesdefaultassetsfontsiconsWoff2Content)